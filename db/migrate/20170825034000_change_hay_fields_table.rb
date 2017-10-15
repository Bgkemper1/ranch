class ChangeHayFieldsTable < ActiveRecord::Migration[5.0]
  def change
    add_column :hay_fields, :hay_price, :decimal
  end
end
