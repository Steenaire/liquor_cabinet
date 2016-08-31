class RatingsController < ApplicationController
  def create
    if current_user.ratings.any?
      puts "Has ratings"
      current_user.ratings.each do |rating|
        "eaching through ratings"
        if rating.recipe_id == params[:recipe_id]
          "rating destroyed"
          rating.destroy
        end
      end
    end
    
    rating = Rating.new(user_id: params[:user_id], recipe_id: params[:recipe_id], score: params[:score])
    rating.save
  end

  # private
  #   def rating_params
  #     params.require(:rating).permit(
  #       :user_id
  #       :recipe_id
  #       :score
  #       )
  #   end
end
