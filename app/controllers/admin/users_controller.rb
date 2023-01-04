class Admin::UsersController < ApplicationController
  

  
  def update
    @user=current_user
    if @user.update(user_params)
    flash[:notice] = "登録情報の変更が完了しました。"
    redirect_to admin_user_path
    else
    flash[:danger] = "未入力項目があります"
    @user=User.find(params[:id])
    render :edit
    end
  end
  
  def show
    @user=User.find(params[:id])
  end

  def edit
  end
  
  
  def index
    @users=User.all
  end
  
  #退会アクション
  def is_deleted
   @user = current_user
   #is_deletedカラムにフラグを立てる(defaultはfalse)
   @user.update(is_deleted: true)
   reset_session
    flash[:notice] = "ありがとうございました。またのご利用を心よりお待ちしております。"
    redirect_to root_path
  end
  
end
