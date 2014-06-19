require "alchemy-location-essences/ability"

module Alchemy
  module Location
    module Essences
      class Engine < Rails::Engine
        engine_name 'alchemy-location-essences'
        config.mount_at = '/'

        initializer "alchemy-location-essences.register_ability" do
          Alchemy.register_ability Alchemy::Location::Essences::Ability
        end
      end
    end
  end
end