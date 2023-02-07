class Admin::HomesController < ApplicationController
  
  def top
   @posts=Post.all
   @users=User.all
  end
  
end
