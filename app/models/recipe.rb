class Recipe < ApplicationRecord

  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  belongs_to :user

  def self.search(search)
    where("lower(name) LIKE ?", "%#{search.downcase}%") 
  end

  def self.check_user_inventory(recipes_all,users_ingredients)
    recipes = []
    recipes_all.each do |recipe|
      comparisons = recipe.ingredients - users_ingredients
      recipes << recipe if (comparisons-users_ingredients).empty?
    end
    return recipes
  end

  def self.strip_garnishes(recipes_all,users_ingredients)
      recipes_garnish_stripped = []

      recipes_all.each do |recipe|
        recipe.recipe_ingredients.each do |recipe_ingredient|
          recipes_garnish_stripped = recipe.ingredients - [recipe_ingredient.ingredient] if recipe_ingredient.garnish
        end
      end

      recipes = []

      recipes_all.each do |recipe|
        comparisons = recipes_garnish_stripped - users_ingredients
        recipes << recipe if (comparisons-users_ingredients).empty?
      end

      return recipes
  end

end
