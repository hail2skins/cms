class CreateCustomersPackages < ActiveRecord::Migration
  def change
    create_table :customers_packages do |t|
      t.integer :customer_id, null: false
      t.integer :package_id, null: false
      t.date :date_purchased
      t.date :date_completed
      t.timestamps
    end

    add_index :customers_packages, :customer_id
    add_index :customers_packages, :package_id
    add_index :customers_packages, [:customer_id, :package_id], unique: true
  end
end