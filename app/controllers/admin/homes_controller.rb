class Admin::HomesController < ApplicationController
  
  def top
   @posts=Post.all.order(id: "DESC")
   @users=User.all
  end
  
end
