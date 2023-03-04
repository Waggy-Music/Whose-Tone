# frozen_string_literal: true

class Public::SessionsController < Devise::SessionsController
   before_action :user_state, only: [:create]
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
  # 下記から追加してます
    # def new
    #   if @user.email == ""
    #     flash[:warning] = "メールアドレスを入力してください"
    #     redirect_to user_session_path
    #   end
    # end
    
    # def create
    #   user = User.find_by(email: params[:email])
    #   if user && user.authenticate(params[:password])
    #     session[:user_id] = user.id
    #     redirect_to root_path, notice: 'ログインしました'
    #   else
    #     flash.now[:alert] = 'メールアドレスまたはパスワードが違います'
    #     render 'new'
    #   end
    # end
  
  protected
  # 退会しているかを判断するメソッド
    def user_state
    ##入力されたemailからアカウントを1件取得
      @user = User.find_by(email: params[:user][:email])
    ##アカウントを取得できなかった場合、このメソッドを終了する
       return if !@user
    ##取得したアカウントのパスワードと入力されたパスワードが一致してるかを判別＋会員ではない（退会した）アカウントなら弾く
       if @user.valid_password?(params[:user][:password]) && (@user.is_deleted == true)
          flash[:warning] = "退会済みです。再度ご登録をしてご利用ください。"
           redirect_to user_session_path
       end
    end
end
