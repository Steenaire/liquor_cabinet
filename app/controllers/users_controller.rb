class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)

    user.username = user.username.gsub(/\b('?[a-z])/) { $1.capitalize }
    user.email = user.email.downcase

    if user.address || user.city || user.zip_code
      address = "#{user.address}, #{user.city} #{user.zip_code}"
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
      flash[:success] = "Successfully created account! Welcome, #{user.username}!"
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

  def edit
    if current_user
      @user = User.find_by(id: params[:id])
    else
      flash[:warning] = "You do not have permission"
      redirect_to '/login'
    end
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.assign_attributes(user_params)
    if @user.save
      flash[:success] = "Changes saved"
      redirect_to "/users/#{@user.id}"
    else
      flash[:warning] = "Could not save changes"
      redirect_to "/users/#{@user.id}"
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

  def nearby
    @user = User.find(params[:id])
    if current_user && current_user.id == @user.id
      @recipes = @user.my_area_drinks
      @timeline_drinks = @user.timeline_drinks.order({ created_at: :desc }).page params[:page]
      @random_recipe = Recipe.all.sample
    else
      flash[:danger] = "You do not have permission to view this"
      redirect_to '/login'
    end
  end

  private

    def user_params
      params.require(:user).permit(
        :id, 
        :username,
        :email, 
        :password, 
        :password_confirmation, 
        :address, 
        :city, 
        :zip_code, 
        :latitude, 
        :longitude, 
        :timezone, 
        :avatar, 
        :bio
        )
    end

end
