# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'date_duration/version'

Gem::Specification.new do |spec|
  spec.name          = "date_duration"
  spec.version       = DateDuration::VERSION
  spec.authors       = ["Mohan Chhalotre"]
  spec.email         = ["mohanchhalotre@gmail.com"]
  spec.description   = %q{The Duration Calculator calculates the number of days, months and years between two dates.}
  spec.summary       = %q{The Duration Calculator calculates the number of days, months and years between two dates.}
  spec.homepage      = "https://github.com/mohangurjar82/date_duration"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
