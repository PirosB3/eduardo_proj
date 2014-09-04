class Admin::ShopsController < ApplicationController
    before_filter :check_session

    def index
        @shops = Shop.all
    end

    def new
        @shop = Shop.new
    end

    def create
        @shop = Shop.new(shop_parameters)
        if @shop.valid?
            @shop.save
            redirect_to [:admin, @shop]
        else
            render :new
        end
    end

    def show
        @shop = Shop.find(params[:id])
    end

    private
    def shop_parameters
        params.require(:shop).permit(:name, :address, :logo)
    end
end
