class AddRememberTokenToOwners < ActiveRecord::Migration
  def change
  	add_column :owners, :remember_token, :string
  	add_index :owners, :remember_token
  end
end
