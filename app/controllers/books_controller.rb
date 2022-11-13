class BooksController < ApplicationController

    def index 
        render json: Book.all, status: :ok
    end

    def show
        book = Book.find(params[:id])
        render json: book, include: :reviews, status: :ok
    end 

    
end
