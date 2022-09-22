class ApplicationController < ActionController::Base
  add_flash_types(:danger)


private


  def current_user?(user)
    current_user == user
  end

  helper_method :current_user?


  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user


  def require_signin
    unless current_user
      session[:intended_url] = request.url
      redirect_to new_sessions_url, alert: "Please sign in first!"
    end
  end


  def current_user_admin?
    current_user && current_user.admin?
  end

  helper_method :current_user_admin?


  def require_admin
    unless current_user.admin? # boolean attributes can be read using question mark
      redirect_to events_url, alert: "Unauthorized access!"
    end
  end


end
