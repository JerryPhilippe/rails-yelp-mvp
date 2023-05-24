class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true

  @allowed_categories = %w[chinese italian japanese french belgian]
  validates_inclusion_of :category, in: @allowed_categories
end
