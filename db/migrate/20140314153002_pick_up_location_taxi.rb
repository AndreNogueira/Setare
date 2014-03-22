class PickUpLocationTaxi < ActiveRecord::Migration
  def change
    create_table :pick_up_locations_taxis, id: false do |t|
      t.integer :pick_up_location_id, null:false
      t.foreign_key :pick_up_locations, dependent: :delete

      t.integer :taxi_id, null:false
      t.foreign_key :taxis, dependent: :delete
    end

  end
end
