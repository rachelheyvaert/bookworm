class Book < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
    has_many :book_clubs, through: :book_club_books

end
