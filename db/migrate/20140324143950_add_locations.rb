class AddLocations < ActiveRecord::Migration
  def change
    create_table :alchemy_locations do |t|
      t.string :title
      t.string :street
      t.string :number, limit: 16
      t.string :postal_code, limit: 10
      t.string :city
      t.string :country
      t.string :lat, limit: 64
      t.string :lon, limit: 64

      t.timestamps
    end

  end
end
