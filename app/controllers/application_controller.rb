class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?


  protected def configure_permitted_parameters
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: [:login, :password]
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
  
  def render_404
    render :template => '/errors/404.html', :layout => false, :status => :not_found
  end

  def render_403
    render :template => '/errors/403.html', :layout => false, :status => :not_found
  end

end
