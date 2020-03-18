class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def create
        user = User.create(user_params)

        if user.valid?
            payload = { user_id: user.id }
            token = JWT.encode(payload, secret, "HS256")
            results = user.results
            render json: { user: user, token: token, results: results }
        else
            render json: { errors: user.errors.full_messages }, status: 400
        end
    end

    private
    def user_params
        params.permit(:username, :password)
    end
end
