class UsersController < ApplicationController
    # before_action :authorized, except: [:create]

    # POST /register
    def create
        user = User.create!(user_params)
        if user.valid?
            # issue token to user if they are valid
            token = encode_token(user_id: user.id)

            render json: {user: user, jwt: token}, status: :created

        else
            render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def login
        user = User.find_by(username: login_params[:username])
        # authenticate user with both username and password
        if user && user.authenticate(login_params[:password])
            token = encode_token(user_id: user.id)
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
        params.permit(:username, :password)
    end
    def login_params
        params.permit(:username, :password)
    end
end
        params.permit(:username, :email, :password, :password_confirmation)
    end
end 

# class UsersController < ApplicationController
#     def index
#         render json: User.all
#     end

#     #Handle auto-login by implementing a `GET /me` route.
#     def show
#         user = User.find_by(id: session[:user_id]);
#         if user
#             render json: user, status: :created 
#         else
#             render json: {error: "Not authorised"}, status: :unauthorized
#         end
#     end

#     #Handle sign up by implementing a `POST /signup` route.
#     def create
#         @user = User.create(user_params);
#         if @user.save
#             payload = { user_id: @user.id}
#             token = create_token(payload)
#             render json: @user, status: :created, location: @user

#         else
#             render json: @user.errors, status: :unprocessable_entity
#         end
#     end

#     private
#     def user_params
#         params.permit(:username, :email, :age, :gender, :address, :contact, :password, :password_confirmation)
#     end
    

#     def find_user
#         User.find(params[:id])
#     end

# end
