class Api::V1::InvestmentsController < ApplicationController

    def index
        # total_investments = Investment.sum(:amount)
        total_investments = Investment.total_investments
        
        render json: total_investments
    end 
    
end
