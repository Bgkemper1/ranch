class AddMyAmountToHayField < ActiveRecord::Migration[5.0]
  def change
    add_column :hay_fields, :my_amount, :decimal, precision: 16, scale: 2
    add_column :hay_fields, :your_amount, :decimal, precision: 16, scale: 2
  end
end
