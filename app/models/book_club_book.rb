class BookClubBook < ApplicationRecord
  belongs_to :book
  belongs_to :book_club



  def book_title
    self.book.title 
  end

  def bookclub_name
    self.book_club.name
  end
end
