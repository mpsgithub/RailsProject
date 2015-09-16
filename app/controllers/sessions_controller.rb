require 'json'
require 'net/http' 
require 'open-uri'

class SessionsController < ApplicationController

	def index
		render "tts"

	end

	def new  
  	end 

	def create 
	    user = User.find_by(user_name: params[:user_name])
	    if user && user.authenticate(params[:password])
	      session[:user_id] = user.id
	      # redirect_to "/users/#{user.id}"
	      redirect_to "/subjects/index"
	    else
	      flash[:errors] = ["Invalid email/password combination"]
	      redirect_to "/sessions/new"
	    end
	end  

  

	def destroy
	  	reset_session
	  	redirect_to "/sessions/new"
	end	
end