class CreateSubsidiaries < ActiveRecord::Migration
  def change
    create_table :subsidiaries do |t|

      t.string :name, null: false
      t.string :address, null: false

      t.integer :city_id, null: false
      t.foreign_key :cities, dependent: :delete

      t.integer :agency_id, null: false
      t.foreign_key :agencies, dependent: :delete

      t.timestamps
    end
  end
end
