class Api::V1::BusinessesController < ApplicationController

    def index
        businesses = Business.all
        render json: businesses
    end

    def show
        business = Business.all.find_by(id:params[:id])
        render json: business
    end
    
end

