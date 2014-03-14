class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :image, null: false
      t.string :brand, null: false
      t.string :model, null: false
      t.integer :year, null: false
      t.boolean :ac, null: false, default: false
      t.boolean :abs, null: false, default: false
      t.boolean :transmission, null: false, default: false
      t.integer :doors_number, null: false
      t.integer :capacity, null: false, default: 2
      t.decimal :price, null:false, precison:10,scale: 2
      t.boolean :is_available, null: false, default: true
      t.integer :current_subsidiary, null: false

      t.integer :agency_id, null: false
      t.foreign_key :agencies, dependent: :destroy

      t.integer :category_id, null: false
      t.foreign_key :categories, dependent: :destroy

      t.timestamps
    end
  end
end
