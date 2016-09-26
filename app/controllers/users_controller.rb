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

      Timezone::Lookup.config(:google) do |c|
        c.api_key = ENV['timezone_key']
      end

      user.timezone = Timezone.lookup(user.latitude, user.longitude)

    end

    if user.save
      UserMailer.welcome_email(user).deliver_later

      session[:user_id] = user.id
      flash[:success] = "Successfully created account! Welcome, #{params[:username]}!"
      redirect_to "/tutorial"
    else
      flash[:danger] = "Invalid email or password."
      redirect_to "/signup"
    end

  end

  def show
    if current_user
      @user = User.find(params[:id])
      @recipes = Recipe.where(user_id: @user.id)
      @timeline_drinks = @user.timeline_drinks.order({ created_at: :desc }).page params[:page]
      @random_recipe = Recipe.all.sample
    else
      flash[:warning] = "Please sign in to see user cabinets"
      redirect_to '/login'
    end
  end

  def timeline
    if current_user
      @user = User.find(params[:id])
      @recipes = Recipe.where(user_id: @user.id).page params[:page]
      @timeline_drinks = @user.timeline_drinks.order({ created_at: :desc }).page params[:page]
      @random_recipe = Recipe.all.sample
    else
      flash[:warning] = "Please sign in to see user cabinets"
      redirect_to '/login'
    end
  end

  def cabinet
    if current_user
      @user = User.find(params[:id])
      @recipes = Recipe.where(user_id: @user.id)
      @timeline_drinks = @user.timeline_drinks.order({ created_at: :desc }).page params[:page]
      @random_recipe = Recipe.all.sample
    else
      flash[:warning] = "Please sign in to see user cabinets"
      redirect_to '/login'
    end
  end

  def recipes
    if current_user
      @user = User.find(params[:id])
      @recipes = Recipe.where(user_id: @user.id).page params[:page]
      @timeline_drinks = @user.timeline_drinks.order({ created_at: :desc }).page params[:page]
      @random_recipe = Recipe.all.sample
    else
      flash[:warning] = "Please sign in to see user cabinets"
      redirect_to '/login'
    end
  end

end
