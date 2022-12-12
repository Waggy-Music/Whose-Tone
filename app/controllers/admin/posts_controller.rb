class Admin::PostsController < ApplicationController
  
  def update
   @post=Post.find(params[:id])
   @post.update(post_params)
   @post.save
   flash[:notice]="編集が完了しました。"
   redirect_to admin_post_path(@post.id)
  end
  
  # def destroy
  #   @post=Post.find(params[:id])
  #   @post.destroy
  #   redirect_to posts_path
  # flash[:notice]="投稿を削除しました。"
  # end
  
    
  def show
    @post=Post.find(params[:id])
  end
  
  def edit
    @post=Post.find(params[:id])
  end
  
  def index
    @posts=Post.all
    
  end
  
  private
  
  def post_params
    params.require(:post).permit(:body, :tag, :is_deleted, images:[])
  end

end
