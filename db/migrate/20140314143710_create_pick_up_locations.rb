class CreatePickUpLocations < ActiveRecord::Migration
  def change
    create_table :pick_up_locations do |t|
      t.string :name, null:false

      t.integer :city_id, null:false
      t.foreign_key :cities, dependent: :delete

      t.timestamps
    end
  end
end
