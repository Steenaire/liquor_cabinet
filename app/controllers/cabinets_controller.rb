class CabinetsController < ApplicationController

  def destroy
    Cabinet.find_by(id: params[:id]).destroy

    flash[:warning] = "Ingredient Removed from Your Cabinet!"

    redirect_to "/users/#{current_user.id}"
  end

  def new
    @cabinet =  Cabinet.new
  end

  def create
    @cabinet = Cabinet.new(user_id: current_user.id, brand_id: 2, ingredient_id: params[:ingredient][:ingredient_id])

    if @cabinet.save
      flash[:success] = "Ingredient Added!"
      redirect_to "/users/#{current_user.id}"
    else
      flash[:warning] = "Ingredient Not Added"
      redirect_to "/users/#{current_user.id}"
    end
  end

end
