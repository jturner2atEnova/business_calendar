# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'business_calendar/version'

Gem::Specification.new do |spec|
  spec.name          = "business_calendar"
  spec.version       = BusinessCalendar::VERSION
  spec.authors       = ["Robert Nubel"]
  spec.email         = ["rnubel@enova.com"]
  spec.description   = %q{Helper gem for dealing with business days and date adjustment in multiple countries.}
  spec.summary       = %q{Country-aware business-date logic and handling.}
  spec.homepage      = "https://github.com/enova/business_calendar"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "holidays", "~> 8.7"
  spec.add_dependency "faraday"

  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "pry"
end
