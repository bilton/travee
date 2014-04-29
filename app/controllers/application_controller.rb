class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  def require_signin
  	unless current_user
  		session[:intended_url] = request.url
  		redirect_to new_session_path, alert: "Please sign in first!"
  	end
  end

  def require_correct_user
  	@user = User.find(params[:id])
  	unless current_user?(@user)
  		redirect_to intineraries_path, alert: "incorrect user!"
  	end
  end

  def current_user?(user)
  	current_user == user
  end

  def load_continents
    @continents = Continent.all
  end



end
