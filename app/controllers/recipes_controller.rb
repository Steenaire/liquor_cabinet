class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all

    if params[:personal_index]
      users_ingredients = current_user.ingredients
      recipes_all = Recipe.all
      @recipes = []
      recipes_all.each do |recipe|
        comparisons = recipe.ingredients - users_ingredients
        @recipes << recipe if (comparisons-users_ingredients).empty?
      end
    end

    if params[:personal_index_ignore_garnish]
      users_ingredients = current_user.ingredients
      recipes_all = Recipe.all
      recipes_garnish_stripped = []
      @recipes = []

      recipes_all.each do |recipe|
        recipe.recipe_ingredients.each do |recipe_ingredient|
          recipes_garnish_stripped = recipe.ingredients - [recipe_ingredient.ingredient] if recipe_ingredient.garnish
        end

        comparisons = recipes_garnish_stripped - users_ingredients
        @recipes << recipe if (comparisons-users_ingredients).empty?
      end

    end

  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
  end

  def search
    if params[:search]
      @recipes = Recipe.search(params[:search])
      render :index
    else
      @recipes = Recipe.all
    end
  end

end
