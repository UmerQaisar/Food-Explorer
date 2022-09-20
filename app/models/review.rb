class Review < ApplicationRecord
  has_many_attached :images
  #Relations
  belongs_to :customer

  # Validations
  validates :review, :restaurant_name, :rating,  presence: true
  validates :rating, length: {maximum: 6}
end
