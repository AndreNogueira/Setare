class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name, null: false
      t.boolean :is_taxi, null: false, default: false

      t.integer :country_id, null: false
      t.foreign_key :countries, dependent: :delete

      t.timestamps
    end
  end
end
