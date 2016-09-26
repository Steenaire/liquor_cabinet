class RecipesController < ApplicationController

  def index

    if current_user
      users_ingredients = current_user.ingredients
      recipes_all = Recipe.all
      users_cabinets = current_user.cabinets

      if params[:commit]&&params[:require_garnish]&&params[:require_brand]
        no_brand_recipes = Recipe.ignore_brand_garnish_matters(recipes_all,users_ingredients)
        recipes = Recipe.brand_matters_garnish_matters(no_brand_recipes,users_cabinets)
        @recipes = Kaminari.paginate_array(recipes).page params[:page]
        flash[:success] = "These are the drinks you can make (requiring garnish and brand)!"

      elsif params[:commit]&&params[:require_garnish]
        recipes = Recipe.ignore_brand_garnish_matters(recipes_all,users_ingredients)
        @recipes = Kaminari.paginate_array(recipes).page params[:page]
        flash[:success] = "These are the drinks you can make (requiring garnish and ignoring brand)!"

      elsif params[:commit]&&params[:require_brand]
        recipes = Recipe.brand_matters_ignore_garnish(recipes_all,users_cabinets)
        @recipes = Kaminari.paginate_array(recipes).page params[:page]
        flash[:success] = "These are the drinks you can make (requiring brand and ignoring garnish)!"

      elsif params[:commit]
        recipes = Recipe.ignore_brand_ignore_garnish(recipes_all,users_cabinets)
        @recipes = Kaminari.paginate_array(recipes).page params[:page]
        flash[:success] = "These are the drinks you can make (ignoring garnish and brand)!"

      else
        @recipes = Recipe.all.page params[:page]

      end
    else
      @recipes = Recipe.all.page params[:page]
    end

    @random_recipe = Recipe.all.sample

  end

  def show
    if current_user
      counter = 0
      current_user.visits.each do |visit|
        if visit.recipe.id == params[:id].to_i
          counter += 1
        end
      end
      unless counter > 0
        if current_user.visits.length == 5
          current_user.visits.first.destroy
        end
        Visit.create!(user_id: current_user.id, recipe_id: params[:id])
      end
    end

    @timeline_drink = TimelineDrink.new
    @recipe = Recipe.find_by(id: params[:id])
    @convert_to = "metric"
    @unit = "oz"
    @locations = @recipe.locations_made

    if params[:metric]
      @recipe.recipe_ingredients.each do |recipe_ingredient|
        recipe_ingredient.quantity = recipe_ingredient.oz_to_ml
        @convert_to = "imperial"
        @unit = "mL"
      end
    elsif params[:imperial]
      @recipe = Recipe.find_by(id: params[:id])
      @unit = "oz"
    end
    @random_recipe = Recipe.all.sample
  
  end

  def search
    if params[:search]
      recipes = Recipe.search(params[:search])
      @recipes = Kaminari.paginate_array(recipes).page params[:page]
      @random_recipe = Recipe.all.sample
      render :index
    elsif params[:ingredient_search]
      recipes = Recipe.ingredient_search(params[:ingredient_search])
      @recipes = Kaminari.paginate_array(recipes).page params[:page]
      @random_recipe = Recipe.all.sample
      render :index
    elsif params[:city]
      recipes = Recipe.by_city(params[:city])
      @recipes = Kaminari.paginate_array(recipes).page params[:page]
      @random_recipe = Recipe.all.sample
      render :index
    else
      @recipes = Recipe.all.page params[:page]
      @random_recipe = Recipe.all.sample
    end
  end

  def new
    @recipe = Recipe.new
    if params[:ingredients]
      params[:ingredients].to_i.times { @recipe.recipe_ingredients.build }
    else
      @recipe.recipe_ingredients.build
    end
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.name.gsub(/\b('?[a-z])/) { $1.capitalize }
    if @recipe.save
      redirect_to "/recipes/#{@recipe.id}"
    else
      render 'new'
    end
  end

  def destroy
    recipe = Recipe.find_by(id: params[:id])
    recipe.recipe_ingredients.each do |recipe_ingredient|
      recipe_ingredient.destroy
    end
    recipe.destroy
    redirect_to "/users/#{current_user.id}"
  end

  def edit
    @recipe = Recipe.find_by(id: params[:id])
    #@recipe.ingredients.length.times { @recipe.recipe_ingredients.build }
    unless current_user && current_user.id == @recipe.user.id
      flash[:danger] = "You do not have permission to edit this recipe"
      redirect_to '/recipes'
    end
  end

  def update
    @recipe = Recipe.find_by(id: params[:id])
    Recipe.update(@recipe.id, recipe_params)
    beans+1
    if @recipe.save
      flash[:success] = "Recipe Updated!"
      redirect_to "/recipes/#{@recipe.id}"
    else
      render 'edit'
    end
  end

  private

    def recipe_params
      params.require(:recipe).permit(
        :name,
        :instructions,
        :description,
        :user_id,
        :card_image,
        recipe_ingredients_attributes: [:id, :quantity, :measurement, :garnish, :recipe_id, :ingredient_id, :brand_id, :_destroy]
        )
    end

end
