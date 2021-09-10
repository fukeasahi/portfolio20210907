class Caretakers::ReviewsController < ApplicationController
    def create
        review = Review.new(review_params)
        review.caretaker_id = 1
        review.rate = 5
        review.cleaner_id = params[:cleaner_id].to_i
        review.save
        redirect_to caretakers_cleaner_path(params[:cleaner_id].to_i)
    end
    
    def destroy
    end
    
    private
    def review_params
        params.require(:review).permit(:comment)
    end
end
