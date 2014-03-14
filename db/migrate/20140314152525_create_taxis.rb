class CreateTaxis < ActiveRecord::Migration
  def change
    create_table :taxis do |t|
      t.string :name, null:false
      t.string :image, null:false
      t.integer :passengers_number, null:false
      t.integer :luggage, null:false
      t.decimal :price_km, precision:10, scale:2, null:false

      t.timestamps
    end
  end
end
