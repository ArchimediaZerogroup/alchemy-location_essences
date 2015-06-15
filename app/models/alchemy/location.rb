module Alchemy
  class Location < ActiveRecord::Base
    has_many :events, class_name: "Event"
  end
end
