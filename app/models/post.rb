class Post < ApplicationRecord
  
  belongs_to :user
  #belongs_to :admin
  has_many_attached :images
  has_many :likes,dependent: :destroy
  has_many :comments,dependent: :destroy
  
  validates:body, presence: true
  # ,length: { minimum: 1, maximum: 200 }　文字がないバリテーションだけで良いと思ったのでコメントアウト
  
  def liked_by?(user)
   likes.exists?(user_id: user.id)
  end
  
  def get_image(width,height)
    if image.attached?
       image.variant(resize_to_limit: [width, height]).processed
    # else
    # file_path = Rails.root.join('app/assets/images/no_image.jpg')
    # image.attach(io: File.open(file_path), filename: 'no_image.jpg', content_type: 'image/jpg')
    end
  end
  
end
