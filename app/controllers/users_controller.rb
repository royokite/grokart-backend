class UsersController < ApplicationController
    # GET /Users
    def index
        user = User.all
        render json: user , status: :ok
    end

    # POST /login
    def create
        @user = User.new(user_params)
        if user.save
            payload = { user_id: @user.id}
            token = create_token(payload)
            render json: @user, status: :created, location: @user
        else
            render json: @user.errors, status: :unprocessable_entity
        end
    end

    # GET /me
    def show
        user = User.find_by(id: session[:user_id])
        if user
            render json: user, status: :ok
        else
            render json: {errors: "Not authorised"}, status: :unauthorized
        end
    end

    private
    def user_params
        params.permit(:username, :email, :password, :password_confirmation)
    end
end
