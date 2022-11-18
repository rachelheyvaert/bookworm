class User < ApplicationRecord
    has_many :books, through :reviews
    has_many :reviews
    has_secure_password 
    validates :email, uniqueness: true, presence: true
    validates :username, uniqueness: true, presence: true
end
