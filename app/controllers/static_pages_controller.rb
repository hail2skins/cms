class StaticPagesController < ApplicationController
  def home
  	#Allows the current_user to create a business and bind to user_id if signed_in, which is provided by Devise.
 		if signed_in?
 			@owner = current_owner
  		@businesses = current_owner.businesses
   		if current_owner.businesses.count > 0
  			@business  = current_owner.businesses.first
   		end
  	end	 
  end

  def help
  end

  def about  	
  end
end
