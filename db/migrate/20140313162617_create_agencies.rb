class CreateAgencies < ActiveRecord::Migration
  def change
    create_table :agencies do |t|
      t.string :name, null: false
      t.string :image, null: false

      t.timestamps
    end
  end
end
