class PagesController < ApplicationController

  def welcome
    @recipes = Recipe.popular_ingredients
  end

  def tutorial
  end

end
