class AddressesController < ApplicationController


	private
	    # Never trust parameters from the scary internet, only allow the white list through.
    def address_params
      params.require(:address).permit(:line1, :line1, :city, :state, :zip)
    end

end
