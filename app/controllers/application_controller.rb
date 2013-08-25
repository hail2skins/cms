class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  #this line controlls authorization for whole site
  before_action :authorize
  
  delegate :allow?, to: :current_permission
  helper_method :allow?
  
  delegate :allow_param?, to: :current_permission
  helper_method :allow_param?

  # Force signout to prevent CSRF attacks
  def handle_unverified_request
  	sign_out
  	super
  end

     # Never trust parameters from the scary internet, only allow the white list through.
#    def address_params
#      params.require(:address).permit(:line1, :line2, :city, :state, :zip)
#    end

private

    def current_permission
      @current_permission ||= Permission.new(current_owner)
    end

    def current_resource
      nil
    end

    def authorize
      if current_permission.allow?(params[:controller], params[:action], current_resource)
        current_permission.permit_params! params
      else
        redirect_to root_url, alert: "Not authorized."
      end
    end  

end
