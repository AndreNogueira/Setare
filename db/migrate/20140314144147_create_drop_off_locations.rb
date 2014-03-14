class CreateDropOffLocations < ActiveRecord::Migration
  def change
    create_table :drop_off_locations do |t|
      t.string :name, null:false

      t.timestamps
    end
  end
end
