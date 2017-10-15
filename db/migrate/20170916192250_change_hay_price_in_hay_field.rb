class ChangeHayPriceInHayField < ActiveRecord::Migration[5.0]
  def change
    change_column :hay_fields, :hay_price, :decimal, precision: 16, scale: 2
  end
end
