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
      flash[:danger]="保存に失敗しました。"
      @post=Post.find(post_params)
      render:new
    end
  end
  
  def update
   @post=Post.find(params[:id])
   @post.update(post_params)
   @post.save
   flash[:notice]="投稿が完了しました。"
   redirect_to post_path(@post.id)
  end
  
    
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
    params.require(:post).permit(:body, :tag,:image)
  end

  
end
