class TimelineDrinksController < ApplicationController
  
  def create
    # timeline_drink = TimelineDrink.new(
    #   user_id: params[:user_id], 
    #   recipe_id: params[:recipe_id], 
    #   comment: params[:comment]
    # )
    timeline_drink = TimelineDrink.new(timeline_drink_params)
    if timeline_drink.save
      redirect_to "/users/#{current_user.id}"
    else
      # flash[:warning] = "Drink not saved to timeline"
    end
  end

  private

    def timeline_drink_params
      params.require(:timeline_drink).permit(
        :comment,
        :user_id,
        :recipe_id,
        :image
        )
    end

end
