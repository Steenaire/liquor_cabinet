class PagesController < ApplicationController

  def welcome
    @recipes = Recipe.all
  end

end
