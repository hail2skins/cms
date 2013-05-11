class AddPhoneToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :phone, :string, limit: 10
  end
end
