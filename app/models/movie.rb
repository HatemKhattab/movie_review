class Movie < ActiveRecord::Base
  has_attached_file :image, 
    styles: { medium: "400x600#", thumb: "100x100>" },
    default_url: "images/no_image.png"
  
  belongs_to :user
  has_many :reviews
  
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
