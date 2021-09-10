class Caretakers::PropertiesController < ApplicationController
    def index
        @properties = Property.all
    end

    def new
        @property = Property.new
    end

    def show
        @property = Property.find(params[:id])
    end

    def edit
        @property = Property.find(params[:id])
    end

    def create
        property = Property.new(property_params)
        puts "ここまで来てる"
        if property.save
            redirect_to :action => "index"
        else
            redirect_to :action => "new"
        end
    end

    def update
        @property = Property.find(params[:id])
        if @property.update(property_params)
            redirect_to :action => "show", :id => @anime.id
        else
            redirect_to :action => "new"
        end
    end
    
    def destroy
        Property.find(params[:id]).destroy
        redirect_to action: :index
    end

    private
        def property_params
            params.require(:property).permit(:post_code, 
                                             :image_id,
                                             :size,
                                             :status,
                                             :prefecture,
                                             :city,
                                             :address_number,
                                             :building)
        end

end
