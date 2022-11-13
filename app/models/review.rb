class Review < ApplicationRecord
  belongs_to :book
  belongs_to :user

  validates :rating, numericality: {greater_than: 0}
  validates :rating, numericality: {less_than: 6}
  validates :review_body, presence: true
end
