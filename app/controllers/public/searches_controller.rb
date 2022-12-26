class Public::SearchesController < ApplicationController
  
  def search
    @content = params[:content]
    
    @result_nick_name=User.where("nick_name LIKE?",'%'+@content+'%')
    @result_profile=User.where('profile LIKE ?', '%'+@content+'%')
    @result_address=User.where('address LIKE ?', '%'+@content+'%')
    @result_action_range=User.where('action_range LIKE ?', '%'+@content+'%')
    @result_tag=User.where('tag LIKE ?', '%'+@content+'%')
    @result_tag=Post.where('tag LIKE ?', '%'+@content+'%')
    @result_body=Post.where('body LIKE ?', '%'+@content+'%')
    #binding.pry
    
   
  end
  
  private
  
  def search_for(model,content,method,tag)
      User.where('nick_name LIKE ?', '%'+content+'%')
      User.where('profile LIKE ?', '%'+content+'%')
      User.where('tag LIKE ?', '%'+content+'%')
      Post.where('tag LIKE ?', '%'+content+'%')
      Post.where('body LIKE ? ','%'+content+'%')
      User.where('address LIKE ?', '%'+content+'%')
      User.where('action_range LIKE ?', '%'+content+'%')
  end
end
