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

    def update
        unless user.update(find_params)
            render json: { errrors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy
        user = find_user
        user.destroy
        head :no_content
    end

    private

    def user_params
        params.permit(:name, :username, :email, :age, :gender, :address, :contact, :password)
    end  

    def find_user
        user = User.find(params[:id])
    end
end
