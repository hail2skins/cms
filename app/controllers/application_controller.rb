class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  # Force signout to prevent CSRF attacks
  def handle_unverified_request
  	sign_out
  	super
  end

     # Never trust parameters from the scary internet, only allow the white list through.
    def address_params
      params.require(:address).permit(:line1, :line2, :city, :state, :zip)
    end
end
