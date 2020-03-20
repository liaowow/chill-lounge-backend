class AuthController < ApplicationController
    def login
        user = User.find_by(username: user_params[:username])
        if user && user.authenticate(user_params[:password])
            # byebug
            payload = { user_id: user.id }
            token = JWT.encode(payload, secret, 'HS256')
            results = user.results
            render json: { user: user, token: token, results: results}
        else
            render json: { errors: "Invalid username or password. Try again!" }
        end
    end

    def persist
        if request.headers['Authorization']
            token = request.headers['Authorization'].split(' ')[1]
            user_id = JWT.decode(token, secret, true, { algorithm: 'HS256' })[0]['user_id']
            user = User.find(user_id)
            render json: user
        end
    end

    private
    def user_params
        params.permit(:username, :password)
    end
end