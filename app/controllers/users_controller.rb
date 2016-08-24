class UsersController < ApplicationController
  def new
  end

  def create
    
    user = User.new(
      username: params[:username],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
      )

    if user.save
      session[:user_id] = user.id
      flash[:success] = "Successfully created account! Welcome, #{params[:name]}!"
      redirect_to "/"
    else
      flash[:danger] = "Invalid email or password."
      redirect_to "/signup"
    end

  end

  def show
    if current_user
      @user = User.find(params[:id])
    else
      flash[:warning] = "Please sign in to see user cabinets"
      redirect_to '/login'
    end
  end
end
