class CreateGiftCerts < ActiveRecord::Migration
  def change
    create_table :gift_certs do |t|
      t.string :name
      t.integer :number
      t.integer :value
      t.text :description
      t.integer :customer_id
      t.int :redeemed
      t.date :date_redeemed

      t.timestamps
    end
  end
end
