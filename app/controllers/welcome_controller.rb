class WelcomeController < ApplicationController
    def home 
        @books = Book.all
        render json: @books
    end
end
