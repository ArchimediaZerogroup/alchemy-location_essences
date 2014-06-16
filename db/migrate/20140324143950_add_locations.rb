class AddLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :title, limit: 64
      t.integer :picture_id
      t.string :subtitle, limit: 64
      t.string :street, limit: 128
      t.string :number, limit: 16
      t.string :postal_code, limit: 10
      t.string :city, limit: 64
      t.string :url, limit: 128
      t.string :phone, limit: 32
      t.string :email, limit: 64
      t.text :description
      t.string :lat, limit: 16
      t.string :lon, limit: 16

      t.timestamps
    end

  end
end
