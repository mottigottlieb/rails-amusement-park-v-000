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
		@user = User.find_by(params[:name]) 
		    if @user && @user.authenticate(params[:password])
		     session[:user_id] = user.id
     		redirect_to "user_path(@user)"
     	else
     		redirect_to '/signin'
     	end  
	end

	def show
		@user = User.find_by(params[:id])
	end

	def destroy
		session[:user_id] = nil
		redirect_to '/'
	end
	
	private

	def user_params
		 params.require(:user).permit(:name, :password, :height, :happiness, :nausea,:tickets)
	end
end
