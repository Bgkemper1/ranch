class FixColumnName < ActiveRecord::Migration[5.0]
  def change
     rename_column :hay_fields, :hay_price, :price_per_ton
  end
end
