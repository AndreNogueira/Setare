class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.string :name, null: false, limit: 100
      t.integer :bi, null: false
      t.string :email, null: false, limit: 50
      t.string :password, null: false, limit: 50
      t.string :driver_license, null: false, limit: 12
      t.integer :nif, null: false
      t.string :address, null: false, limit: 200
      t.integer :phone_number, null: false

      t.integer :user_profile_id, null: false
      t.foreign_key :user_profiles, dependent: :destroy

      t.timestamps
    end
  end
end
