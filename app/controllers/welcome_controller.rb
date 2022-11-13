class WelcomeController < ApplicationController
    def home 
        @books = Book.all
    end
end
