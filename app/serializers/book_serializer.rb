class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :description, :page_count, :img_url
  has_many :reviews
  has_many :users
end
