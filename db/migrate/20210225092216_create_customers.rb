class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :full_name
      t.string :age
      t.string :aadhar_number

      t.timestamps
    end
  end
end
