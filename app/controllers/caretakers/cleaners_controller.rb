class Caretakers::CleanersController < ApplicationController
    def index
        @cleaners = Cleaner.all
        @url      = request.url
    end
    
    def search
        @posts    = Cleaner.search(params[:keyword])
        @cleaners = Cleaner.all
        @keyword  = params[:keyword]
        @url      = request.url
        render "index"
    end
    
    def show
        @cleaner = Cleaner.find(params[:id])
        @review  = Review.new
        @reviews = Review.all
    end
end
