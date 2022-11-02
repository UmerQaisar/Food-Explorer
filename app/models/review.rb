class Review < ApplicationRecord
  has_many_attached :images
  #Relations
  belongs_to :customer

  # Validations
  validates :review, :restaurant_name, :rating,  presence: true
  validates :rating, length: {maximum: 6}

  def self.search(restaurant_name)
    if restaurant_name.present?
      return Review.where("restaurant_name like ?", "%#{restaurant_name}%")
    end
    Review.all
  end
end
