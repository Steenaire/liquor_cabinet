class Recipe < ApplicationRecord

  paginates_per 6

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :description, presence: true
  validates :instructions, presence: true

  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  has_many :timeline_drinks
  has_many :ratings

  belongs_to :user

  accepts_nested_attributes_for :recipe_ingredients, reject_if: :all_blank, allow_destroy: true

  mount_uploader :card_image, ImageUploader

  def self.search(search)
    where("lower(name) LIKE ?", "%#{search.downcase}%") 
  end

  def self.ingredient_search(ingredient_search)
    Recipe.includes(:ingredients).where('lower(ingredients.name) LIKE ?', "%#{ingredient_search.downcase}%").references(:ingredients)
  end

  def self.popular_ingredients()
    popular_recipes = []
    recipes = Recipe.all
    recipes.each do |recipe|
      if recipe.average_rating > 3
        popular_recipes << recipe
      end
      if popular_recipes.length == 6
        return popular_recipes
      end
    end
    return popular_recipes
  end

  def self.ignore_brand_garnish_matters(recipes_all,users_ingredients)
    recipes = []
    recipes_all.each do |recipe|
      comparisons = recipe.ingredients - users_ingredients
      recipes << recipe if (comparisons-users_ingredients).empty?
    end
    return recipes
  end

  def self.ignore_brand_ignore_garnish(recipes_all,users_cabinets)
    branded_recipes = []
    holder = 0

    recipes_all.each do |recipe|
      holder = 0
      recipe.recipe_ingredients.each do |recipe_ingredient|
        users_cabinets.each do |user_cabinet|
          unless recipe_ingredient.garnish
            if user_cabinet.ingredient == recipe_ingredient.ingredient
              holder += 1
            end
          end
        end
        if recipe_ingredient.garnish
          holder += 1
        end
      end

      if holder == recipe.recipe_ingredients.length
        branded_recipes << recipe
      end
    end

    return branded_recipes

  end

  def self.brand_matters_garnish_matters(no_brand_recipes,users_cabinets)
    branded_recipes = []
    holder = 0

    no_brand_recipes.each do |recipe|
      holder = 0
      recipe.recipe_ingredients.each do |recipe_ingredient|
        users_cabinets.each do |user_cabinet|
          if user_cabinet.ingredient == recipe_ingredient.ingredient && user_cabinet.brand == recipe_ingredient.brand
            holder += 1
          end
        end
      end

      if holder == recipe.recipe_ingredients.length
        branded_recipes << recipe
      end
    end

    return branded_recipes
  end

  def self.brand_matters_ignore_garnish(recipes_all,users_cabinets)
    branded_recipes = []
    holder = 0

    recipes_all.each do |recipe|
      holder = 0
      recipe.recipe_ingredients.each do |recipe_ingredient|
        users_cabinets.each do |user_cabinet|
          unless recipe_ingredient.garnish
            if user_cabinet.ingredient == recipe_ingredient.ingredient && user_cabinet.brand == recipe_ingredient.brand
              holder += 1
            end
          end
        end
        if recipe_ingredient.garnish
          holder += 1
        end
      end

      if holder == recipe.recipe_ingredients.length
        branded_recipes << recipe
      end
    end

    return branded_recipes

  end

  def average_rating
    if self.ratings.any?
      all_ratings = 0
      self.ratings.each do |rating|
        all_ratings += rating.score
      end
      return all_ratings/self.ratings.length
    else
      return 0
    end
  end

  def total_ratings
    return self.ratings.length
  end

  def return_comments
    all_comments = []
    if self.timeline_drinks.any?
      self.timeline_drinks.each do |drink|
        if drink.comment
          all_comments << drink
        end
      end
    end
    return all_comments
  end

  def self.by_city(city)
    city_drinks = {}
    city_drinks_top_ten = []
    city_users = User.near("#{city}")

    city_users.each do |user|
      if user.timeline_drinks.any?
        user.timeline_drinks.each do |drink|
          if city_drinks[drink.recipe]
            city_drinks[drink.recipe] += 1
          else
            city_drinks[drink.recipe] = 1
          end
        end
      end
    end
    
    sorted_city_drinks = city_drinks.sort_by {|_key, value| value}.reverse

    sorted_city_drinks.each_with_index do |drink,index|
      city_drinks_top_ten<<drink[0]
      return city_drinks_top_ten if index == 9
    end

    return city_drinks_top_ten
  end

end
