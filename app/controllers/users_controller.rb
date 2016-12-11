class UsersController < ApplicationController
	require 'pry'
	def new
		@user = User.new
	end
	def welcome

	end

	def create
		@user = User.create(user_params)
		session[:user_id] = @user.id

		redirect_to user_path(@user) 
	end

	def sign_in

	end




	def show
		@user = User.find_by(params[:id])
	end

	
	private

	def user_params
		 params.require(:user).permit(:name, :password, :height, :happiness, :nausea,:tickets)
	end
end
