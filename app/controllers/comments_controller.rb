class CommentsController < ApplicationController
  def create
    @article = Post.find(params[:article_id])
    @comment = @post.comments.create(comment_params)
    redirect_to article_path(@post)
  end
  
  def destroy
  end
  @post = Post.find(params[:article_id])
  @comment = @post.comments.create(comment_params)
  
  @comment.destroy
  redirect_to article_path(@post)
  private
    def comment_params
      params.require(:comment).permit(:name, :body)
    end
end
