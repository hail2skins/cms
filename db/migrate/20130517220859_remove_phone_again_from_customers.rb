class RemovePhoneAgainFromCustomers < ActiveRecord::Migration
  def change
	 	remove_column :customers, :phone
  end
end
