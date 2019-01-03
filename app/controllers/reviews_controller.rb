class ReviewsController < ApplicationController
    def index
        @review = Review.all
    end
    
    def show
        @movie = Movie.find(params[:id])
        @reviews = @movie.reviews
    end

    def create
        Review.create(review_params)
        redirect_to reviews_path
    end

    def edit
        @review = Review.find(params[:id])
    end

    def update
        review = Review.find(params[:id])
        review.update(review_params)
        redirect_to review
    end

    def destroy
        review = Review.find(params[:id])
        review.destroy
        redirect_to reviews_path
    end

    private

    def review_params
        params.require(:review).permit(:user, :movie, :rating, :content)
    end
end
