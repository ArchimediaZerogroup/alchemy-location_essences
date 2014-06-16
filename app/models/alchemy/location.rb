module Alchemy
  class Location < ActiveRecord::Base
    belongs_to :picture, class_name: Alchemy::Picture

    def self.alchemy_resource_relations
        {
          picture: {attr_method: 'name', attr_type: 'string'},
        }
    end
  end
end
