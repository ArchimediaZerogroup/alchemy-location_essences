require "alchemy-location-essences/ability"

module Alchemy
  module LocationEssences
    class Engine < Rails::Engine
      engine_name 'alchemy-location_essences'
      config.mount_at = '/'

      initializer "alchemy-location_essences.register_ability" do
        Alchemy.register_ability Alchemy::LocationEssences::Ability
      end
    end
  end
end