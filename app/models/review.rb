class Review < ActiveRecord::Base
  validates :name, presence: true, length: { maximum:  50, minimum: 3 }
  validates :message, presence: true, length: { maximum:  500, minimum: 3 }

  belongs_to :user

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]  
end
