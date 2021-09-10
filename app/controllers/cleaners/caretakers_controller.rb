class Cleaners::CaretakersController < ApplicationController
    def index
        cleaner = 1
        @ok_orders = Order.where(cleaner_id: cleaner, status: "承認")
        @yet_orders = Order.where(cleaner_id: cleaner, status: "承認待ち")
    end
    
    def show
        @caretaker = Caretaker.find(params[:id])
    end
    
    def update
        @order = Order.find(params[:id])
        if params[:status] == 0
            v = "承認待ち"
        elsif params[:status] == 1
            v = "承認"
        elsif params[:status] == 2
            v = "承認不可"
        end
        @order.update(status: v)
        print(@order)
        redirect_to cleaners_caretakers_path
    end
    
    # def index2
    #     # @properties = Property.all
    #     # @url = request.url
    # end
    
    # def search
    # #   @properties = Properties.search(params[:keyword])
    # #   @cleaners = Cleaner.all
    # #   @keyword = params[:keyword]
    # #   @url = request.url
    # #   render "index"
    # end
    private
    def caretaker_params
        params.require(:caretaker).permit(:status)
    end
end



