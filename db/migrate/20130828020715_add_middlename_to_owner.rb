class AddMiddlenameToCustomers < ActiveRecord::Migration
  def change
  	add_column :owners, :middle_name, :string
  end
end
