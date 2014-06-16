require "alchemy_essence_location/ability"

module Alchemy
  module Locations
    module Essence
      class Engine < Rails::Engine
        engine_name 'alchemy_location_essence'
        config.mount_at = '/'

        initializer "alchemy_location_essence.register_ability" do
          Alchemy.register_ability Alchemy::Locations::Essence::Ability
        end
      end
    end
  end
end