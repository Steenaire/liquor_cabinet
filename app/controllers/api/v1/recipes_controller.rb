class Api::V1::RecipesController < ApplicationController
  def index
    @recipes = Recipe.all.order(:name)
    render json: @recipes
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
    render json: @recipe
  end
end
