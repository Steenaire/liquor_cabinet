class RecipesController < ApplicationController

  def index
      users_ingredients = current_user.ingredients
      recipes_all = Recipe.all
      users_cabinets = current_user.cabinets

    if params[:personal_index]&&params[:ignore_brand]
      @recipes = Recipe.check_user_inventory(recipes_all,users_ingredients)

    elsif params[:personal_index]&&params[:ignore_garnish]
      @recipes = Recipe.strip_garnishes(recipes_all,users_ingredients)

    elsif params[:require_brand]&&params[:ignore_garnish] #DOESN'T WORK YET!!
      no_garnish_recipes = Recipe.strip_garnishes(recipes_all,users_ingredients)
      @recipes = Recipe.brand_matters(users_cabinets,no_garnish_recipes)

    elsif params[:require_brand]
      no_brand_recipes = Recipe.check_user_inventory(recipes_all,users_ingredients)
      @recipes = Recipe.brand_matters(users_cabinets,no_brand_recipes)

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
