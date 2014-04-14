class AddFieldsToTaxiServices < ActiveRecord::Migration
  def change
    add_column :taxi_services, :country, :string, null: false
    add_column :taxi_services, :city, :string, null: false
    add_column :taxi_services, :pick_up_location, :string, null: false
    add_column :taxi_services, :drop_off_location, :string, null: false
  end
end
