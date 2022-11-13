class BookClub < ApplicationRecord
    has_many :books, through: :book_club_books
    has_many :users
    has_many :book_club_books

    validates_presence_of :name
end
