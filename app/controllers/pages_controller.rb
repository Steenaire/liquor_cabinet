class PagesController < ApplicationController

  def welcome
    @recipes = Recipe.popular_ingredients
  end

end
