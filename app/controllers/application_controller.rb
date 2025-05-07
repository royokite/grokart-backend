class ApplicationController < ActionController::API
  include JwtToken

   #before_action :authenticate_user!

  attr_reader :current_user

  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  rescue_from JWT::DecodeError, with: :unauthorized_request
  rescue_from JWT::ExpiredSignature, with: :unauthorized_request
  rescue_from JWT::VerificationError, with: :unauthorized_request

  private

  def authenticate_user
    header = request.headers["Authorization"]
    token = header.split(" ").last if header.present?
    decoded = jwt_decode(token)
    @current_user = User.find(decoded[:user_id])
  end

  def record_not_found(error)
    render json: { error: error.message }, status: :not_found
  end

  def unauthorized_request(error)
    render json: { error: "Unauthorized: #{error.message}" }, status: :unauthorized
  end
end
