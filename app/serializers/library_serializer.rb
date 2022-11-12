class LibrarySerializer < ActiveModel::Serializer
  attributes :id
  has_one :book_club
  has_one :book
end
