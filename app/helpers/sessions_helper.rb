module SessionsHelper

	def sign_in(owner)
		cookies.permanent[:remember_token] = owner.remember_token
		self.current_owner = owner		
	end

	def signed_in?
		!current_owner.nil?
	end

	def current_owner=(owner)
		@current_owner = owner
	end

	def current_owner
		@current_owner = Owner.find_by_remember_token(cookies[:remember_token])
	end
end
