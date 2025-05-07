class AuthenticationController < ApplicationController
  skip_before_action :authenticate_user, only: [:login]

  def login
    user = User.find_by_email(params[:email])
    if user&.authenticate(params[:password])
      token = jwt_encode(user_id: user.id)
      render json: {
        token: token,
        user: user.slice(:id, :name, :email, :username, :role)
      }, status: :ok
    else
      render json: { error: "Incorrect username or password" }, status: :unauthorized
    end
  end
end
