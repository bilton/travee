class SessionsController < ApplicationController
	def new
		
	end

	def create
		user = User.find_by(email: params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			flash[:notice] = "Welcome #{user.email}"
			redirect_to(session[:intended_url] || itineraries_path)
			session[:intended_url] = nil
		else
			flash.now[:alert] = "Invalid email/password combination"
			render :new
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to itineraries_path, alert: "You are now signed out!"
	end
end
