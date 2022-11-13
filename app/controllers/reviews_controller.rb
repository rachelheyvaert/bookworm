class ReviewsController < ApplicationController
    def index 
        render json: Review.all, status: :ok
    end 

    def show
        review = Review.find(params[:id])
        render json: review, include: :book, status: :ok
    end 

    def create
        review = Review.create!(review_params)
        render json: review, status: :created
    end 

    def update 
        review = Review.find(params[:id])
        review.update!(review_params)
        render json: review, status: :accepted
    end 

    def destroy
        review = Review.find(params[:id])
        review.destroy
        head :no_content 
    end 

    private
    
    def review_params
        params.permit(:rating, :review_body)
    end
end