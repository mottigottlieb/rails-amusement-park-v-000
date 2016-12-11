class UsersController < ApplicationController 
	require 'pry'
	
	def new
		@user = User.new
	end
	def welcome

	end

	def create
		@user = User.new(user_params) 
		if @user.save  
			# binding.pry
		session[:user_id] = @user.id	
		redirect_to user_path(@user) 
		else
			redirect_to "/"
		end		
	end

	def sign_in

	end

	def show
		 @user = User.find_by(params[:id])  
		 if session[:user_id]
		 	redirect_to user_path(@user)
		 else
		 	redirect_to '/'
		 end

	end

	
	private

	def logged_in
		@user = User.find(params[:id])
	end

	def user_params
		 params.require(:user).permit(:name, :password, :height, :happiness, :nausea,:tickets)
	end
end
