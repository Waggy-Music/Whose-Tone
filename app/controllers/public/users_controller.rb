class Public::UsersController < ApplicationController
  
  def show
    @user=User.find(params[:id])
  end
  
  def edit
    @user=current_user
  end
  
  def update
    @user=current_user
    if @user.update(user_params)
    flash[:notice] = "登録情報の変更が完了しました。"
    redirect_to user_path
    else
    flash[:danger] = "未入力項目があります"
    @user=User.find(params[:id])
    render :edit
    end
  end
  
  def index
    @users=User.all
  end
  
  
  private
  
  def user_params
    params.require(:user).permit(:name,:nick_name,:address,:profile,:action_range,:action_style,
    :links,:tag,:holidays,:shop_style,:role,:is_deleted,:image)
  end
end
