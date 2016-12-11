class SessionsController < ApplicationController
	
	# def sign_in
	
	# end
	def sign_in
		render "users/sign_in"
	end

	def create
		@user = User.find_by(params[:name]) 
	    if @user && @user.authenticate(params[:password])
	     session[:user_id] = user.id
     	 redirect_to user_path 
     	else
      		redirect_to "/"
	  	end  
	end 

	def destroy
		session.clear
		redirect_to '/'
	end

end
