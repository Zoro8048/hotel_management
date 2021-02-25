class AddMobileToCustomer < ActiveRecord::Migration[6.0]
  def change
    add_column :customers, :mobile, :string
  end
end
