class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to itineraries_path, notice: "User successfully created!"
		else
			render :new
		end
	end

	def destroy
		@user = User.find(params[:id])
		session[:user_id] = nil
		@user.destroy
		redirect_to itineraries_path, alert: "Account deleted! "
	end

private
	def user_params
		params.require(:user).permit(:email, :password, :password_confirmation)
	end

end
