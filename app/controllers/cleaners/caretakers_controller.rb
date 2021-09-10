class Cleaners::CaretakersController < ApplicationController
    def index
        cleaner = 1
        @ok_orders = Order.where(cleaner_id: cleaner, status: "承認")
        @yet_orders = Order.where(cleaner_id: cleaner, status: "承認待ち")
    end
    
    def show
        @order = Order.find(params[:id])
    end
    
    def update
        @order = Order.find(params[:id])
        if params[:order][:status] == "0"
            valu = "承認待ち"
        elsif params[:order][:status] == "1"
            valu = "承認"
        elsif params[:order][:status] == "2"
            valu = "承認不可"
        elsif params[:order][:status] == "3"
            valu = "清掃完了"
        end
        
        @order.update(status: valu)
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



