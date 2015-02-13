# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'RomanNumber/version'

Gem::Specification.new do |spec|
  spec.name          = "RomanNumber"
  spec.version       = RomanNumber::VERSION
  spec.authors       = ["Jochen Fromm"]
  spec.email         = ["Jochen.Fromm@googlemail.com"]

  spec.summary       = %q{Converts Roman Numbers}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
