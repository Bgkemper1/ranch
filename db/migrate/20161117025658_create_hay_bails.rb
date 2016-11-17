class CreateHayBails < ActiveRecord::Migration[5.0]
  def change
    create_table :hay_bails do |t|
      t.string :field_name
      t.integer :bail_count

      t.timestamps
    end
  end
end
