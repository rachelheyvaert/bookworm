class BookClub < ApplicationRecord
    has_many :books, through: :book_club_books
    has_many :users
end
