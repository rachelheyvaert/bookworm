class Library < ApplicationRecord
  belongs_to :book_club
  belongs_to :book
end
