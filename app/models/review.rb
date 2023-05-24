class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  @allowed_rating = [0, 1, 2, 3, 4, 5]
  validates_inclusion_of :rating, in: @allowed_rating
end
