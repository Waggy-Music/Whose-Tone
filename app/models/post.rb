class Post < ApplicationRecord
  
  belongs_to :user
  #belongs_to :admin
  has_many_attached :images
  
  def get_image(width,height)
    if image.attached?
       image.variant(resize_to_limit: [width, height]).processed
    # else
    # file_path = Rails.root.join('app/assets/images/no_image.jpg')
    # image.attach(io: File.open(file_path), filename: 'no_image.jpg', content_type: 'image/jpg')
    end
  end
  
end
