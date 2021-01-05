class Api::V1::InvestmentsController < ApplicationController

    def index
        total_investments = Investment.sum(:amount)

        render json: total_investments
    end 
end
