class ApplicationController < ActionController::API
  include ActionController::Cookies
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

  def render_not_found(e) 
    render json: {errors: ['Record not found']}, status: :not_found
  end
end
