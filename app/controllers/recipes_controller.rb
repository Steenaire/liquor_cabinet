class RecipesController < ApplicationController

  def index
      users_ingredients = current_user.ingredients
      recipes_all = Recipe.all
      users_cabinets = current_user.cabinets

    if params[:personal_index]&&params[:ignore_brand]
      @recipes = Recipe.ignore_brand_garnish_matters(recipes_all,users_ingredients)

    elsif params[:personal_index]&&params[:ignore_garnish]
      @recipes = Recipe.ignore_brand_ignore_garnish(recipes_all,users_cabinets)

    elsif params[:require_brand_ignore_garnish]
      @recipes = Recipe.brand_matters_ignore_garnish(recipes_all,users_cabinets)

    elsif params[:require_brand]
      no_brand_recipes = Recipe.ignore_brand_garnish_matters(recipes_all,users_ingredients)
      @recipes = Recipe.brand_matters_garnish_matters(no_brand_recipes,users_cabinets)

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
