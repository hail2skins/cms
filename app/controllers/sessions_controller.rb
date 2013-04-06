class SessionsController < ApplicationController

	def new		
	end

	def create
		# May need to refactor the find_by here for Rails 4.0. 
		# Railscasts video on new items in Rails 4.0 shows this.	
		owner = Owner.find_by_email(params[:session][:email].downcase)
		if owner && owner.authenticate(params[:session][:password])
			sign_in owner
			redirect_to owner
		else
			flash.now[:error] = 'Invalid email/password combination'
			render 'new'
		end	
	end

	def destroy
	end
end
