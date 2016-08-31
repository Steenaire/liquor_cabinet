class Recipe < ApplicationRecord

  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  has_many :ratings

  belongs_to :user

  accepts_nested_attributes_for :recipe_ingredients, reject_if: :all_blank, allow_destroy: true

  def self.search(search)
    where("lower(name) LIKE ?", "%#{search.downcase}%") 
  end

  def self.ingredient_search(ingredient_search)
    Recipe.includes(:ingredients).where('lower(ingredients.name) LIKE ?', "%#{ingredient_search.downcase}%").references(:ingredients)
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

end
