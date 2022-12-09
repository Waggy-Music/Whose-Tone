class Public::UsersController < ApplicationController
  
  def show
    @user=User.find(params[:id])
  end
  
  def edit
    @user=current_user
  end
  
  def update
    @user=current_user
    @user.update(user_params)
    flash[:notice] = "登録情報の変更が完了しました。"
    redirect_to user_path
  end
  
  def index
    @users=User.all
  end
  
  
  private
  
  def user_params
    params.require(:user).permit(:name,:nick_name,:address,:profile,:action_range,:action_style,
    :links,:tag,:holidays,:shop_style,:role,:is_deleted)
  end
end
