class CommentsController < ApplicationController

  def new
  end

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      flash[:success] = "Comment submitted!"
      redirect_to "/blogs/#{@comment.blog_id}"
    else
      flash[:warning] = "Comment not submitted"
      redirect_to "/blogs/#{@comment.blog_id}"
    end
  end


  private

    def comment_params
      params.require(:comment).permit(
        :content,
        :user_id, 
        :blog_id
        )
    end
end
