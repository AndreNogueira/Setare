class DropOffLocationPickUpLocation < ActiveRecord::Migration
  def change
    create_table :drop_off_location_pick_up_location, id: false do |t|
      t.integer :drop_off_location_id , null:false
      t.foreign_key :drop_off_locations, dependent: :destroy

      t.integer :pick_up_location_id , null:false
      t.foreign_key :pick_up_locations, dependent: :destroy
    end

  end
end
