class Admin::InformationsController < ApplicationController
  
  def new
    @information=Information.new
  end
  
  def create
    @information=Information.new(information_params)
    @information.admin_id=current_admin.id
    @information.save
    flash[:notice]="管理者投稿が完了しました。"
    redirect_to admin_information_path(@information.id)
  end
  
  def update
   @information=Information.find(params[:id])
   @information.update(information_params)
   @information.save
   flash[:notice]="編集が完了しました。"
   redirect_to admin_information_path(@information.id)
  end
  
  def destroy
    @information=Information.find(params[:id])
    @information.destroy
    @informations=Information.all
    flash[:notice]="投稿を削除しました。"
    render :index
  end
  
  def index
    @informations=Information.all
  end
  
  
  def show
    @information=Information.find(params[:id])
  end
  
  def edit
    @information=Information.find(params[:id])
  end
  
  private
  
  def information_params
    params.require(:information).permit(:body,:tag,images:[])
  end
end
