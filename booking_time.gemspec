$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "booking_time/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "booking_time"
  spec.version     = BookingTime::VERSION
  spec.authors     = ["Matt"]
  spec.email       = ["matt.wxw.adelaide@gmail.com"]
  spec.homepage    = "https://github.com/wxw-matt/booking_time"
  spec.summary     = "Get beginning of the next time span."
  spec.description = "Get beginning of the next time span."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.3", ">= 6.0.3.2"

  spec.add_development_dependency "sqlite3"
end
