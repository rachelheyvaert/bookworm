class CreateBookClubBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :book_club_books do |t|
      t.references :book, null: false, foreign_key: true
      t.references :book_club, null: false, foreign_key: true

      t.timestamps
    end
  end
end
