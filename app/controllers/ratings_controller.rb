class RatingsController < ApplicationController
  def create
    rating = Rating.new(user_id: params[:user_id], recipe_id: params[:recipe_id], score: params[:score])
    rating.save
  end

  def destroy
    Rating.find_by(id: params[:id]).destroy
  end
end
