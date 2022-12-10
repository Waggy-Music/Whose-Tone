class Public::HomesController < ApplicationController
  def top
    @user=current_user
    @post=Post.new
  end
end
