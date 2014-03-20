class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.string :name, null: false, limit: 100
      t.string :bi,null: false, limit: 15
      t.string :driver_license, null: false, limit: 12
      t.string :nif, null: false, limit: 15
      t.string :address, null: false, limit: 200
      t.string :phone_number, null: false, limit: 15

      t.integer :user_profile_id, null: false
      t.foreign_key :user_profiles, dependent: :delete

      t.timestamps
    end
  end
end
