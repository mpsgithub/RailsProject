class UsersController < ApplicationController
	
	def index
	end
		
	def new
	end	

	def demo
	end
	
	def create		
		user = User.new(user_params)
			if user.save
				# save user in session, ie, login user
				session[:user_id] = user.id
				redirect_to "/subjects/index"
			else
				flash[:errors]=user.errors.full_messages
				redirect_to "/sessions/new"
			end
	end

	def show
		# @user=User.find(params[:id])
	end	

	def edit
		@user=User.find(params[:id])
	end
		
	def update
		user=User.find(params[:id])

		if user.update(user_params)
			redirect_to "/users/#{user.id}"
		else
			flash[:errors]="Unable to update"
			redirect_to "/users/#{user.id}"
		end	
	end	

	def destroy
		session.delete (:user_id)
		user = User.find(params[:id]).destroy

		redirect_to '/sessions/new'
	end	
		
	private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :user_name, :age, :score, :password, :password_confirmation)
    end
end	