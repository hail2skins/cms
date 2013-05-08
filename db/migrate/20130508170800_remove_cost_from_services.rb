class RemoveCostFromServices < ActiveRecord::Migration
  def change
  	remove_column :services, :cost
  end
end
