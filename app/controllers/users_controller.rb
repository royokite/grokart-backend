class UsersController < ApplicationController

    skip_before_action :authenticate_user, only: [:create]
    before_action :find_user, only: [:show, :update, :destroy]

    def index
        render json: User.all, status: :ok
    end

    def show
        render json: user, status: :ok
    end

    def create
        user = User.new(user_params)
        if user.save
            render json: user, status: :created
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def login
        user = User.find_by(username: login_params[:username])
        # authenticate user with both username and password
        if user && user.authenticate(login_params[:password])
            if user.role == "admin"
                # issue admin token
                token = encode_token(user_id: user.id, role: "admin")
            else
                # issue regular token
                token = encode_token(user_id: user.id)
            end
            render json: {user: user, jwt: token}, status: :accepted
        else
            render json: { message: 'Invalid username or password' }, status: :unauthorized
        end
    end

    def profile
        render json: {user: current_user}, status: :accepted
    end

    private

    def user_params
        params.permit(:username, :password, :role)
    end

end