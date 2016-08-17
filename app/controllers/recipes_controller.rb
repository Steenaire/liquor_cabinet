class RecipesController < ApplicationController

  def index
      users_ingredients = current_user.ingredients
      recipes_all = Recipe.all

    if params[:personal_index_ignore_brand]
      @recipes = Recipe.check_user_inventory(recipes_all,users_ingredients)
    elsif params[:personal_index_ignore_garnish]
      @recipes = Recipe.strip_garnishes(recipes_all,users_ingredients)
    else
      @recipes = Recipe.all
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
