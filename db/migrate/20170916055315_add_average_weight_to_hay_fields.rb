class AddAverageWeightToHayFields < ActiveRecord::Migration[5.0]
  def change
    add_column :hay_fields, :average_weight, :integer
  end
end
