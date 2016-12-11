class SessionsController < ApplicationController
	
	# def sign_in
	
	# end
	def sign_in
		render "users/sign_in"
	end

	def create
		   @user = User.find_by(name: params[:user][:name])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user), notice: "Welcome back to the theme park!"
    else
      redirect_to signin_path
    end
	end 

	def destroy
		session.clear
		redirect_to '/'
	end

end
