class PagesController < ApplicationController

  def welcome
    @recipes = Recipe.popular_ingredients
  end

  def tutorial
    unless current_user
      flash[:warning] = "Please sign in first"
      redirect_to '/login'
    end
  end

end
