class RemoveAddressFieldsFromBusinesses < ActiveRecord::Migration
  def change
  	remove_column :businesses, :street_address
  	remove_column :businesses, :additional
  	remove_column :businesses, :city
  	remove_column :businesses, :state
  	remove_column :businesses, :zip_code
  end
end
