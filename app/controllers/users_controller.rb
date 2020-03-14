class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def create
        user = User.create(user_params)
        payload = { user_id: user.id }
        token = JWT.encode(payload, secret, "HS256")
        render json: { user: user, token: token }
    end

    private
    def user_params
        params.permit(:username, :password)
    end
end
