class RecipesController < ApplicationController

  def index
    @gold_star = '#FFCC00'
    @grey_star = '#CCCCCC'
    @red_star = '#ED1C3B'

    @five_gold_stars = [@gold_star,@gold_star,@gold_star,@gold_star,@gold_star]
    @four_gold_stars = [@gold_star,@gold_star,@gold_star,@gold_star,@grey_star]
    @three_gold_stars = [@gold_star,@gold_star,@gold_star,@grey_star,@grey_star]
    @two_gold_stars = [@gold_star,@gold_star,@grey_star,@grey_star,@grey_star]
    @one_gold_star = [@gold_star,@grey_star,@grey_star,@grey_star,@grey_star]

    @five_red_stars = [@red_star,@red_star,@red_star,@red_star,@red_star]
    @four_red_stars = [@red_star,@red_star,@red_star,@red_star,@grey_star]
    @three_red_stars = [@red_star,@red_star,@red_star,@grey_star,@grey_star]
    @two_red_stars = [@red_star,@red_star,@grey_star,@grey_star,@grey_star]
    @one_red_star = [@red_star,@grey_star,@grey_star,@grey_star,@grey_star]

    @five_grey_stars = [@grey_star,@grey_star,@grey_star,@grey_star,@grey_star]

    if current_user
      users_ingredients = current_user.ingredients
      recipes_all = Recipe.all
      users_cabinets = current_user.cabinets

      if params[:personal_index]&&params[:ignore_brand]
        recipes = Recipe.ignore_brand_garnish_matters(recipes_all,users_ingredients)

      elsif params[:personal_index]&&params[:ignore_garnish]
        recipes = Recipe.ignore_brand_ignore_garnish(recipes_all,users_cabinets)

      elsif params[:require_brand_ignore_garnish]
        recipes = Recipe.brand_matters_ignore_garnish(recipes_all,users_cabinets)

      elsif params[:require_brand]
        no_brand_recipes = Recipe.ignore_brand_garnish_matters(recipes_all,users_ingredients)
        recipes = Recipe.brand_matters_garnish_matters(no_brand_recipes,users_cabinets)

      else
        recipes = Recipe.all

      end
    else
      recipes = Recipe.all
    end

    @recipes = Kaminari.paginate_array(recipes).page(params[:page])

  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
    @convert_to = "metric"
    @unit = "oz"
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
  
  end

  def search
    if params[:search]
      @recipes = Recipe.search(params[:search])
      render :index
    elsif params[:ingredient_search]
      @recipes = Recipe.ingredient_search(params[:ingredient_search])
      render :index
    else
      @recipes = Recipe.all
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

  private

    def recipe_params
      params.require(:recipe).permit(
        :name,
        :instructions,
        :description,
        :user_id,
        recipe_ingredients_attributes: [:id, :quantity, :volume, :garnish, :weight, :count, :dash, :recipe_id, :ingredient_id, :brand_id, :_destroy]
        )
    end

end
