class BlogsController < ApplicationController

  def index
    @blogs = Blog.all.page params[:page]
    @random_recipe = Recipe.all.sample
  end

  def new
    @blog = Blog.new
    @random_recipe = Recipe.all.sample
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      flash[:success] = "Blog posted!"
      redirect_to "/blogs"
    else
      flash[:warning] = "Blog not posted"
      render 'new'
    end
  end

  def show
    @blog = Blog.find_by(id: params[:id])
    @random_recipe = Recipe.all.sample
  end

  private

    def blog_params
      params.require(:blog).permit(
        :id, 
        :title,
        :content,
        :user_id
        )
    end

end
