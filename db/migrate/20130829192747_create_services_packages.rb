class CreateServicesPackages < ActiveRecord::Migration
  def change
    create_table :services_packages do |t|
      t.integer :service_id, null: false
      t.integer :package_id, null: false

      t.timestamps
    end

    add_index :services_packages, :service_id
    add_index :services_packages, :package_id
    add_index :services_packages, [:service_id, :package_id], unique: true
  end
end
