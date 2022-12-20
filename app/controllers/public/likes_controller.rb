class Public::LikesController < ApplicationController
  
  def create
    # if user_signed_in?
    @post = Post.find(params[:post_id])
    like = current_user.likes.new(post_id: @post.id)
    like.save
    # else
    #   flash[:warning]  ="いいねするには新規登録が必要です"
    #   redirect_to request.referer #前にいたページに返す
    # end
  end
  
  
  
  def destroy
    @post = Post.find(params[:post_id])
    like = current_user.likes.find_by(post_id: @post.id)
    like.destroy
  end
  
end
