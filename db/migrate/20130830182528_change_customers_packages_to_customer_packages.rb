class ChangeCustomersPackagesToCustomerPackages < ActiveRecord::Migration
  def change
  	remove_index :customers_packages, :customer_id
  	remove_index :customers_packages, :package_id
  	remove_index :customers_packages, [:customer_id, :package_id]
  	rename_table :customers_packages, :customer_packages
  	add_index :customer_packages, :customer_id
  	add_index :customer_packages, :package_id
  	add_index :customer_packages, [:customer_id, :package_id], unique: true
  end
end
