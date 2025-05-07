class UsersController < ApplicationController
  # skip_before_action :authenticate_user, only: [:create]

  def index
    render json: User.all, status: :ok
  end

  def show
    user = find_user
    render json: user, status: :ok
  end

  def create
    user = User.new(user_params)
    user.role = "user"
    if user.save
      token = jwt_encode(user_id: user.id)
      render json: { token: token, user: user }, status: :ok
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    user = find_user
    if user.update(user_params)
      render json: user, status: :accepted
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
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
    User.find(params[:id])
  end
end
