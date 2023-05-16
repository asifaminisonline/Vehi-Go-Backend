class ApplicationController < ActionController::API
 include JsonWebToken

 before_action :configure_permitted_parameters, if: :devise_controller?
#  before_action :authenticate_request

 protected
  
 def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
 end

 def authenticate_request
    header = request.headers['Authorization']
    header = header.split("").last if header
    decoded = jwt_decode(header)
    @current_user = User.find(decoded[:user_id])
 end

end
