class RecipesController < ApplicationController

  def index
    if current_user
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
    else
      @recipes = Recipe.all
    end

  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
    @convert_to = "metric"
    @unit = "oz"
    if params[:metric]
      @recipe.recipe_ingredients.each do |recipe_ingredient|
        recipe_ingredient.quantity = recipe_ingredient.oz_to_ml
        @convert_to = "imperial"
        @unit = "mL"
      end
    elsif params[:imperial]
      @recipe = Recipe.find_by(id: params[:id])
      @unit = "oz"
    end
  
  end

  def search
    if params[:search]
      @recipes = Recipe.search(params[:search])
      render :index
    elsif params[:ingredient_search]
      @recipes = Recipe.ingredient_search(params[:ingredient_search])
      render :index
    else
      @recipes = Recipe.all
    end
  end

  def new
    @recipe = Recipe.new
    if params[:ingredients]
      params[:ingredients].to_i.times { @recipe.recipe_ingredients.build }
    else
      @recipe.recipe_ingredients.build
    end
  end

  def create
    recipe = Recipe.new(recipe_params)
    if recipe.save
      redirect_to "/recipes/#{recipe.id}"
    else
      flash[:danger] = "Recipe not created!"
      redirect_to '/recipes/new'
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(
      :name,
      :instructions,
      :description,
      :user_id,
      recipe_ingredients_attributes: [:id, :quantity, :volume, :garnish, :weight, :count, :dash, :recipe_id, :ingredient_id, :brand_id]
      )
  end

end
