class AddCarNumberToCity < ActiveRecord::Migration
  def change
    add_column :cities, :number_cars, :integer, default: 0, null: false

  end
end
