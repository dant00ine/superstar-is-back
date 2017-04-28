module Authenticable

    def current_user
        @current_user ||= User.find_by(auth_token: request.headers['Authorization'])
    end

    def authenticate_with_token!
        if current_user.present?
            render json: { current_user: current_user, status: :success }
        else
            render json: { errors: "Not authenticated" }, status: :unauthorized
        end
    end

    def user_signed_in?
        current_user.present?
    end
end
