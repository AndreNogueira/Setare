class CreateCarServices < ActiveRecord::Migration
  def change
    create_table :car_services do |t|
      t.datetime :service_begin, null: false
      t.datetime :service_end, null: false
      t.boolean :gps, null: false, default: false
      t.boolean :baby_seat, null: false, default: false
      t.boolean :insurance, null: false, default: false
      t.boolean :additional_driver, null: false, default: false
      t.decimal :final_price, null: false, precision:10,scale: 2

      t.integer :car_id, null: false
      t.foreign_key :cars, dependent: :destroy

      t.integer :user_id, null: false
      t.foreign_key :users, dependent: :destroy

      t.integer :pick_up_subsidiary_id, null: false
      t.foreign_key :subsidiaries, column: :pick_up_subsidiary_id, dependent: :delete

      t.integer :drop_off_subsidiary_id, null: false
      t.foreign_key :subsidiaries, column: :drop_off_subsidiary_id, dependent: :delete

      t.timestamps
    end

    #add_foreign_key(:subsidiaries, :car_services, name: 'pick_up_location')
    #add_foreign_key(:subsidiaries, :car_services, name: 'drop_off_location')
  end
end
