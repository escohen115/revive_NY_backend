class Api::V1::UsersController < ApplicationController


    def create
        user = User.create!(strong_params)
        render json: params[:id]
    end

    private

    def strong_params
        params.permit(:name, :email)
    end

end
