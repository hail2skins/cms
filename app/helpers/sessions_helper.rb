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
		@current_owner ||= Owner.find_by_remember_token(cookies[:remember_token])
	end

	def current_owner?(owner)
		owner == current_owner
	end

	def sign_out
		self.current_owner = nil
		cookies.delete(:remember_token)
	end

	def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    session.delete(:return_to)
  end

  def store_location
    session[:return_to] = request.url
  end
end
