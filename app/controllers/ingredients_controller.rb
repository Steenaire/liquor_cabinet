class IngredientsController < ApplicationController

  def new
  end

  def create
    @ingredient = Ingredient.new(name: params[:name].gsub(/\b('?[a-z])/) { $1.capitalize })
    if @ingredient.save
      redirect_to "/users/#{current_user.id}"
    else
      render 'new'
    end
  end

end
