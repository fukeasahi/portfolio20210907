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

    def chat
    end
    
    private
    def order_params
        params.require(:order).permit(:property_id, :start_datetime, :end_datetime)
    end
end
