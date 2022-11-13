class Book < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :users, through: :reviews
    has_many :book_clubs, through: :book_club_books
    # belongs_to :creator, class_name: "User"

end
