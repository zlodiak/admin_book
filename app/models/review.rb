class Review < ActiveRecord::Base
  validates :name, presence: true, length: { maximum:  50, minimum: 3 }
  validates :message, presence: true, length: { maximum:  500, minimum: 3 }
end
