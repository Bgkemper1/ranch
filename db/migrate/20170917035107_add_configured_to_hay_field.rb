class AddConfiguredToHayField < ActiveRecord::Migration[5.0]
  def change
    add_column :hay_fields, :configured, :boolean
  end
end
