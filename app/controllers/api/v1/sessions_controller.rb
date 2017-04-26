class Api::V1::SessionsController < ApplicationController

    def create
        user_password = params[:session][:password]
        user_email = params[:session][:email]
        user = User.find_by(email: user_email)
        # pull this andy

        if user != nil && user.authenticate(user_password)
            user.generate_authentication_token!
            user.save
            render json: user, status: 200, location: [:api, user]
        else
            render json: { errors: 'Invalid email or password' }, status: 422
        end
    end

    def verify
        # byebug
        authenticate_with_token!
        render json: {current_user: current_user, status: :success}
    end

    def destroy
        user = User.find_by(auth_token: params[:id])
        user.generate_authentication_token!
        user.save
        head 204
    end
end
