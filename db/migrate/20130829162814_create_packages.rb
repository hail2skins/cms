class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string :name
      t.text :description
      t.integer :count
      t.date :date_purchased
      t.date :date_completed
      t.integer :business_id

      t.timestamps
    end
  end
end
