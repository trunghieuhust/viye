class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
<<<<<<< HEAD

def configure_permitted_parameters
   devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation) }
end
=======
	
>>>>>>> 5dc4b8973345a7a4a28399c92f83875b64c63ae5
end


