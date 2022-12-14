class ReviewsController < ApplicationController
    before_action :redirect_if_not_logged_in
    skip_before_action :redirect_if_not_logged_in, only: [:index, :show]

 def index
    if params[:user_id]
      @reviews = Review.where(user_id: params[:user_id]).order_by_date
    elsif params[:recipe_id]
      @reviews = Review.where(recipe_id: params[:recipe_id]).order_by_date
    else
      @reviews = Review.order_by_recipe
    end
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
        params.permit(:rating, :review_body, :book_id, :user_id)
    end
end