class AddUsedCountToCustomersPackages < ActiveRecord::Migration
  def change
    add_column :customers_packages, :used_count, :integer, default: 0
  end
end
