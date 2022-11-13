class WelcomeController < ApplicationController
    def home 
        @books = Book.random_books(4)
    end
end
