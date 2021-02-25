class CreateHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :histories do |t|
      t.references :customer, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
