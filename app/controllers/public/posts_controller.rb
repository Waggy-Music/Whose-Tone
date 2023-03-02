class Public::PostsController < ApplicationController
  def new
    @post=Post.new
  end
  
  def create
    @post=Post.new(post_params)
    @post.user_id=current_user.id
     
    if @post.save
     #binding.pry
      flash[:notice]="投稿が完了しました。"
      redirect_to post_path(@post.id)
    else
      flash.now[:danger]="本文は入力必須です"
      # @post=Post.find(post_params)
      render :new
    end
  end
  
  def update
   @post=Post.find(params[:id])
   @post.update(post_params)
   @post.save
   flash[:notice]="編集が完了しました。"
   redirect_to post_path(@post.id)
  end
  
  def destroy
    @post=Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
   flash[:notice]="投稿を削除しました"
  end
  
    
  def show
    @post=Post.find(params[:id])
    @comment=Comment.new
  end
  
  def edit
    @post=Post.find(params[:id])
  end
  
  def index
    @posts=Post.all
    @information=Information.all
#    @posts = []
#    @posts << posts
#    @posts << information
#    @posts.flatten!
#    @posts = @posts.sort {|x, y| x["created_at"] <=> y["created_at"]}.reverse
  end
  
  private
  
  def post_params
    params.require(:post).permit(:body, :tag,images:[])
  end

  
end
