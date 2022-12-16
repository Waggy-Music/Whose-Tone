class Public::CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = current_user.comments.new(comment_params)
    @comment.post_id = @post.id
    @comment.save
    redirect_to post_path(@post.id)
    @comment=Comment.all
    @user=current_user
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment=Comment.find_by(id: params[:id], post_id: params[:post_id])
    @comment.destroy
    @user=current_user
  end
  
  private
  
  def comment_params
    params.require(:comment).permit(:comment)
  end
  
end
