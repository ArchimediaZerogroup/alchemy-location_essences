class CreateAlchemyEssenceLocations < ActiveRecord::Migration
  def change
    create_table :alchemy_essence_locations do |t|
      t.integer :location_id

      t.timestamps
    end
  end
end
