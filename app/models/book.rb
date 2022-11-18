class Book < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :users, through: :reviews
    validates :description, presence: true, length: {maximum: 500}
end
