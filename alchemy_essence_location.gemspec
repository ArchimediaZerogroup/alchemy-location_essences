$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "alchemy_essence_location/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "alchemy_essence_location"
  s.version     = Alchemy::Locations::Essence::VERSION
  s.authors     = ["Martin Meyerhoff"]
  s.email       = ["mamhoff@gmail.com"]
  s.homepage    = "http://www.github.com/mamhoff/alchemy_essence_location"
  s.summary     = "A Location Essence for Alchemy CMS"
  s.description = "A Location Essence for Alchemy CMS"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.1.1"

  s.add_development_dependency "sqlite3"
end
