class RecipeIngredientsController < ApplicationController

  def new
  end

  def create
    recipe_ingredient = RecipeIngredient.new(recipe_ingredient_params)
    recipe_ingredient.ingredient_id = params[:ingredient][:ingredient_id]
    recipe_ingredient.brand_id = params[:brand][:brand_id]
    recipe_ingredient.save
  end

  private

  def recipe_ingredient_params
    params.require(:recipe_ingredient).permit(:ingredient_id, :recipe_id, :quantity, :garnish, :volume, :count, :weight, :dash, :brand_id)
  end
end
