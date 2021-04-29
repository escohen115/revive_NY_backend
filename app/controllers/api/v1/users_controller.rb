class Api::V1::UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end 

    def sign_in
        user = User.find_by(email: params[:email])
        render json: user
    end

    def show
        user = User.find(params[:id])
        render json: user
    end 


    def create
        user = User.create!(strong_params)
        render json: user
    end

    def investments
        user = User.find_by(params[:user_id])
       render json: user.investments
    end 

    private
    def strong_params
        params.permit(:name, :email)
    end

end
