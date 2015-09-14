class SessionsController < ApplicationController
	def index
	end

	def new  
  	end 

	def create 
	    user = User.find_by(user_name: params[:user_name])
	    if user && user.authenticate(params[:password])
	      session[:user_id] = user.id
	      # redirect_to "/users/#{user.id}"
	      redirect_to "/sessions/index"
	    else
	      flash[:errors] = ["Invalid email/password combination"]
	      redirect_to "/users/new"
	    end
	end  

  

	def destroy
	  	reset_session
	  	redirect_to "/users/new"
	end	
end