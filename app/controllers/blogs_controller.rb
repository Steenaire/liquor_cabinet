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
    @comment = Comment.new
  end

  def edit
    @blog = Blog.find_by(id: params[:id])
  end

  def update
    @blog = Blog.find_by(id: params[:id])
    Blog.update(@blog.id, blog_params)
    if @blog.save
      flash[:success] = "Successfully updated post!"
      redirect_to "/blogs/#{@blog.id}"
    else
      flash[:warning] = "Changes not saved"
      redirect_to "/blogs/#{@blog.id}"
    end
  end

  private

    def blog_params
      params.require(:blog).permit(
        :id, 
        :title,
        :content,
        :user_id,
        :draft
        )
    end

end
