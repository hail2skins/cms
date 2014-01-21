class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :street_address
      t.string :additional
      t.string :city
      t.string :state
      t.integer :zip_code
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
