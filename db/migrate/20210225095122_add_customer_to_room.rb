class AddCustomerToRoom < ActiveRecord::Migration[6.0]
  def change
    add_reference :rooms, :customer,  foreign_key: true
  end
end
