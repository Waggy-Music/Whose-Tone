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
    # if params[:artist]
    #   @users = User.artist
    # elsif params[:old]
    #   @users = User.old
    # elsif params[:shop]
    #   @users = User.shop
    # # elsif params[:favorite]
    # #   #@books=Book.count 
    # #   @users = Book.includes(:favorited_users)
    # else
    #   @users = User.all
    # end
  end
  
   #登録情報編集画面から退会ページを表示するアクション
  def unsubscribe
    # binding.pry
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
  
  
  private
  
  def user_params
    params.require(:user).permit(:name,:nick_name,:address,:profile,:action_range,:action_style,
    :links,:tag,:holidays,:shop_style,:role,:is_deleted,:image)
  end
end
