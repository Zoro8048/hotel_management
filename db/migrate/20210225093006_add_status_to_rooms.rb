class AddStatusToRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :rooms, :status, :boolean
  end
end
