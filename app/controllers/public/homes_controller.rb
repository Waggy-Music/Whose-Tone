class Public::HomesController < ApplicationController
  def top
    @user=current_user
    @posts=Post.all.order(id: "DESC")
  end
  def about
    @user=current_user
  end
end
