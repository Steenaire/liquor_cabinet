class PagesController < ApplicationController

  def welcome
    @recipes = Recipe.popular_ingredients
    @first_recipes = Recipe.first(10)
  end

  def tutorial
    unless current_user
      flash[:warning] = "Please sign in first"
      redirect_to '/login'
    end
    @ingredients = Ingredient.first(10)
  end

end
