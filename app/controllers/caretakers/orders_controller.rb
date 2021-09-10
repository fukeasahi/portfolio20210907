class Caretakers::OrdersController < ApplicationController
    def index
        caretaker = 1
        @ok_orders = Order.where(caretaker_id: caretaker, status: "承認")
        @yet_orders = Order.where(caretaker_id: caretaker, status: "承認待ち")
    end
    
    def new
        @order = Order.new
    end
    
    def create
        order = Order.new(order_params)
        order.cleaner_id = params[:cleaner_id]
        order.caretaker_id = 1
        order.status = 0
        order.price = 1000
        order.property_id = 1# 投稿機能できたら変更する
        order.save
        redirect_to caretakers_cleaners_orders_path
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

        if @order.status == "清掃完了"
            redirect_to review_path(@order)
        else
            redirect_to cleaners_caretakers_path
        end
    end

    def chat
        @order = Order.find(params[:id])
    end
    
    def review
        @review  = Review.new
        @order = Order.find(params[:id])
    end
    
    private
    def order_params
        params.require(:order).permit(:property_id, :start_datetime, :end_datetime)
    end
end
