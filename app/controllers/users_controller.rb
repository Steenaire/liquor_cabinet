class UsersController < ApplicationController
  def new
  end

  def create
    
    user = User.new(
      username: params[:username].gsub(/\b('?[a-z])/) { $1.capitalize },
      email: params[:email].downcase,
      address: params[:address],
      city: params[:city],
      zip_code: params[:zip_code],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
      )
    if params[:address] || params[:city] || params[:zip_code]
      address = "#{params[:address]}, #{params[:city]} #{params[:zip_code]}"
      city = Geocoder.search(address)
      user.latitude = city[0].latitude
      user.longitude = city[0].longitude
    end

    if user.save
      session[:user_id] = user.id
      flash[:success] = "Successfully created account! Welcome, #{params[:username]}!"
      redirect_to "/"
    else
      flash[:danger] = "Invalid email or password."
      redirect_to "/signup"
    end

  end

  def show
    if current_user
      @user = User.find(params[:id])
      @recipes = Recipe.where(user_id: @user.id)
    else
      flash[:warning] = "Please sign in to see user cabinets"
      redirect_to '/login'
    end
  end
end
