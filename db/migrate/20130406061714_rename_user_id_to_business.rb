class RenameUserIdToBusiness < ActiveRecord::Migration
  def change
  	rename_column :businesses, :user_id, :owner_id
  end
end
