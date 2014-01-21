class RemoveDatecompletedAndDatepurchasedFromPackages < ActiveRecord::Migration
  def change
  	remove_column :packages, :date_completed
  	remove_column :packages, :date_purchased
  end
end
