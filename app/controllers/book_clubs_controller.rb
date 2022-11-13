class BookClubsController < ApplicationController


    def index
        clubs = Book_club.all
        render json: clubs
    end

    
end
