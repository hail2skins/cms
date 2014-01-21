class CreateServicesVisits < ActiveRecord::Migration
  def change
    create_table :services_visits do |t|
      t.integer :service_id, null: false
      t.integer :visit_id, null: false

      t.timestamps
    end

    add_index :services_visits, :service_id
    add_index :services_visits, :visit_id
    add_index :services_visits, [:service_id, :visit_id], unique: true
  end
end
