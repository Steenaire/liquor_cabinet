class CabinetsController < ApplicationController

  def destroy
    Cabinet.find_by(id: params[:id]).destroy

    flash[:warning] = "Ingredient Removed from Your Cabinet!"

    redirect_to "/users/#{current_user.id}/cabinet"
  end

  def new
    @cabinet =  Cabinet.new
  end

  def create
    if params[:brand] && params[:ingredient]
      @cabinet = Cabinet.new(user_id: current_user.id, brand_id: params[:brand][:brand_id], ingredient_id: params[:ingredient][:ingredient_id])
      if @cabinet.save
        flash[:success] = "Ingredient Added!"
        redirect_to "/users/#{current_user.id}/cabinet"
      else
        flash[:warning] = "Ingredient Not Added"
        redirect_to "/users/#{current_user.id}/cabinet"
      end
    else
      @cabinet = Cabinet.new(user_id: params[:user_id], brand_id: params[:brand_id], ingredient_id: params[:ingredient_id])
      @cabinet.save
    end

  end

end
