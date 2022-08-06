class ItemsController < ApplicationController

    def index
        render json: Item.all, include: :user
    end

    def show
        render json: Item.find_by(id:params[:id]), include: :user
    end
    
end
