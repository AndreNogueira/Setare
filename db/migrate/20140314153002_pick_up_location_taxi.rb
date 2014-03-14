class PickUpLocationTaxi < ActiveRecord::Migration
  def change
    create_table :pick_up_location_taxi, id: false do |t|
      t.integer :pick_up_location_id, null:false
      t.foreign_key :pick_up_locations, dependent: :destroy

      t.integer :taxi_id, null:false
      t.foreign_key :taxis, dependent: :destroy
    end

  end
end
