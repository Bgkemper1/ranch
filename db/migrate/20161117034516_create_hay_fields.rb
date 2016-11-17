class CreateHayFields < ActiveRecord::Migration[5.0]
  def change
    create_table :hay_fields do |t|
      t.string :field_name
      t.integer :bail_count

      t.timestamps
    end
  end
end
