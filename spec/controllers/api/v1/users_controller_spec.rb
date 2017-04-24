require 'rails_helper'

RSpec.describe Api::V1::UsersController, type: :controller do

    before_action :authenticate_with_token!, only: [:show, :update, :destroy]
    respond_to :json

    def show
        puts "anything happening here?"
        User.find(params[:id])
    end

    def create
        user = User.new(user_params)
        if user.save
            render json: user, status: 201, location [:api, user]
        else
            render json: { errors: user.errors }, status: 422
        end
    end

    def update
        user = User.find(params[:id])

        if user.update(user_params)
            render json: user, status: 200, location [:api, user]
        else
            render json: { errors: user.errors }, status: 422
        end
    end

    def destroy
        current_user.destroy
        head 204
    end

    private

        def user_params
            params.require(:user).permit(:email, :password, :password_confirmation)
        end

end
