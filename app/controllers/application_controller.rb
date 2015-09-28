class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  load_and_authorize_resource
  

  def access_denied(exception)
    redirect_to root_path, :alert => exception.message
  end  

  #def authenticate_active_admin_user!
  #  authenticate_user!
  #  unless current_user.superadmin?
  #    flash[:alert] = "Unauthorized Access!"
  #    redirect_to root_path
  #  end
  #end    
end
