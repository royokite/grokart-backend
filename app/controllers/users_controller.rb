class UsersController < ApplicationController
    def index
        render json: User.all
    end

    #Handle auto-login by implementing a `GET /me` route.
    def show
        user = User.find_by(id: session[:user_id]);
        if user
            render json: user, status: :created 
        else
            render json: {error: "Not authorised"}, status: :unauthorized
        end
    end

    #Handle sign up by implementing a `POST /signup` route.
    def create
        user = User.create(user_params);
        if user.valid?
            session[:user_id] = user.id;
            render json:user, status: :created
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    private
    def user_params
        params.permit(:name, :age, :gender, :address, :contact, :username, :password_confirmation)
    end

    def find_user
        User.find(params[:id])
    end

end

