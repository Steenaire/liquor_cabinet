class TimelineDrinksController < ApplicationController
  
  def create
    timeline_drink = TimelineDrink.new(
      user_id: params[:user_id], 
      recipe_id: params[:recipe_id], 
      comment: params[:comment]
    )
    if timeline_drink.save
      redirect_to "/users/#{params[:user_id]}"
    else
      # flash[:warning] = "Drink not saved to timeline"
    end
  end

end
