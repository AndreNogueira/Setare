class AddFuelTypeAndFuelConsumptionToCar < ActiveRecord::Migration
  def change
    add_column :cars,:fuel_type, :string,null: false,default:'diesel'
    add_column :cars,:fuel_consumption, :decimal,null: false, default: 0
  end
end
