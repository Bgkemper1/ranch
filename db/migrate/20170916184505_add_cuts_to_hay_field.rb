class AddCutsToHayField < ActiveRecord::Migration[5.0]
  def change
    add_column :hay_fields, :cuts, :integer
  end
end
