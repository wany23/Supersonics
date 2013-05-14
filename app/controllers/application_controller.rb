class ApplicationController < ActionController::Base
  before_filter :require_user
  before_filter :is_admin
  protect_from_forgery

  def current_user
    if @current_user.nil?
      @current_user = User.find(session[:user_id]) if session[:user_id]
    end
  end
  helper_method :current_user
  
  def require_user
    if current_user
      return true
    end
    redirect_to root_url
  end

  def is_admin
    if @current_user.role == "Admin"
      return true
    else
    redirect_to root_url
    end
  end

  def is_current_user
    if @current_user
      redirect_to user_path
    end
  end
end
