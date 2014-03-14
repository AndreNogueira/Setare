class CreateTaxiServices < ActiveRecord::Migration
  def change
    create_table :taxi_services do |t|
      t.datetime :service_begin, null:false
      t.datetime :service_end
      t.boolean :round_trip, null:false, default: false
      t.boolean :luggage, null:false, default: false
      t.decimal :final_price, precision:10, scale:2, null:false
      t.string :special_request, limit:300

      t.integer :user_id, null:false
      t.foreign_key :users,dependent: :destroy

      t.integer :taxi_id, null:false
      t.foreign_key :taxis, dependent: :destroy
      t.timestamps
    end
  end
end
