class CreateServicesVisits < ActiveRecord::Migration
  def up
  	create_table :services_visits, id: false do |t|
  		t.integer :service_id, null:false
  		t.integer :visit_id, null: false
  	end
  	add_index :services_visits, [:service_id, :visit_id], unique: true
  end

  def down
  	remove_index :services_visits, column: [:service_id, :visit_id]
  	drop_table :services_visits
  end
end
