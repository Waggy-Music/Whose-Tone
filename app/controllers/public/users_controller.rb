class Public::UsersController < ApplicationController
  
  before_action :is_matching_login_user,only: [:edit, :update]
  
  def guest_sign_in
    user = User.find_or_create_by!(email: 'g@guest') do |user|
      user.password = guests
      # user.skip_confirmation!  # Confirmable を使用している場合は必要
      # 例えば name を入力必須としているならば， user.name = "ゲスト" なども必要
    end
    sign_in user
    redirect_to root_path, notice: 'ゲストユーザーとしてログインしました。'
  end
  
  
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
    if params[:role] == 'listener'
      @users = User.where(role: User.roles[:listener])
    elsif params[:role] == 'artist'
      @users = User.where(role: User.roles[:artist])
    elsif params[:role] == 'shop'
      @users = User.where(role: User.roles[:shop])
    elsif params[:role] == 'maker'
      @users = User.where(role: User.roles[:maker])
    else
      @users = User.all
    end
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
  
  def is_matching_login_user
  user_id = params[:id].to_i
  login_user_id = current_user.id
  if(user_id!= login_user_id)
    redirect_to user_path(current_user)
  end
  end
end
