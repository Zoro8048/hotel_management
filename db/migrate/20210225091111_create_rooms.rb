class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :number
      t.references :room_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
