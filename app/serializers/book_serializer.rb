class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author_id, :genre, :description, :page_count, :img_url
end
