class Review < ApplicationRecord
  validates :content, presence: true
  validates :restaurant_id, presence: true
  belongs_to :restaurant
end
