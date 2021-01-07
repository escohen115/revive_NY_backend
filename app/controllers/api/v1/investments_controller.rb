class Api::V1::InvestmentsController < ApplicationController

    def index
        investments = Investment.all  
        
        render json: investments
    end 

    def total_investments
        total_investments = Investment.total_investments
        
        render json: total_investments
    end 

    def create
        investment = Investment.create!(strong_params)
    end

    private

    def strong_params
        params.permit(:amount, :description, :business_id, :user_id)
    end

    
end

