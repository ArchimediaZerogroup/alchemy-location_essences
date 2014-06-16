module Alchemy
  class EssenceLocation < ActiveRecord::Base
    belongs_to :location
    acts_as_essence ingredient_column: :location_id
  end
end