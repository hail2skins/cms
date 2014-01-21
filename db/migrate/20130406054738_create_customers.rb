class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone
      t.integer :business_id
      t.string :referred_by

      t.timestamps
    end
  end
end
