class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    if session[:name].nil?
      nil
    else
      session[:name]
    end
  end

  def redirect_login
    redirect_to controller: 'sessions', action: 'new' unless current_user
  end
end
