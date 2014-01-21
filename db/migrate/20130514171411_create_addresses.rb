class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :line1
      t.string :line2
      t.string :city
      t.string :state, limit: 2
      t.integer :zip, limit: 5
      t.references :addressable, polymorphic: true

      t.timestamps
    end
     add_index :addresses, [:addressable_type, :addressable_id], unique: true
  end
end