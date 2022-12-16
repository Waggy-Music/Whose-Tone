class Public::SearchesController < ApplicationController
  
  def search
    @model = params[:model]
    #binding.pry
    @content = params[:content]
    @method = params[:method]
    @records = search_for(@model, @content, @method,@tag)
    @tag=params[:name]
  end
  
  private
  
  def search_for(model,content,method,tag)
      User.where('nick_name LIKE ?', '%'+content+'%')
      User.where('profile LIKE ?', '%'+content+'%')
      User.where('tag LIKE ?', '%'+content+'%')
      Post.where('tag LIKE ?', '%'+content+'%')
      Post.where('body LIKE ? ','%'+content+'%')
  end
end
