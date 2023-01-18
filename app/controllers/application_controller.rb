class ApplicationController < ActionController::API
    # before_action :authenticate 
    SECRET = 'gro_@_food_._com'

  # before_action :authorized
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

  SECRET = 'gro_@store_.com'

  # encode the payload
  def encode_token(payload)
    JWT.encode(payload, SECRET)
  end

  # get the jwt token from the header request
  def authentication
    request.headers['Authorization']
  end

  # decode the jwt token
  def decoded_token
    if authentication
      token = authentication.split(' ')[1]
      begin
        JWT.decode(token, SECRET, true, { algorithm: 'HS256' })
      rescue JWT::DecodeError
        nil
      end
    end
  end

  # get current user
  def current_user
    if decoded_token
      user_id = decoded_token[0]['user_id']
      User.find(user_id)
    end
  end

  def logged_in?
    !!current_user
  end

  def authorized
    render json: { message: "Please log in" }, status: :unauthorized unless logged_in?
  end

  def authorize_admin
    render json: { error: 'Not Authorized' }, status: :unprocessable_entity unless current_user.user_type == 'admin'
  end

  private

  def record_not_found
    render json: {errors: ['Record not found']}, status: :not_found
  end

  def record_invalid(e)
    render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
  end
end