module Alchemy
  class EssenceLocation < ActiveRecord::Base
    belongs_to :location
    acts_as_essence ingredient_column: :location_id

    def preview_text(max=30)
      return "" if location.blank?
      location.name.to_s[0..max-1]
    end
  end
end