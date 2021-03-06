# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vantiv/version'

Gem::Specification.new do |spec|
  spec.name          = "vantiv"
  spec.version       = Vantiv::VERSION
  spec.authors       = ["Joshua Balloch", "Chris Voxland"]
  spec.email         = ["joshuaballoch@gmail.com", "chrisvoxland@gmail.com"]

  spec.summary       = %q{A simple ruby client to use Vantiv's DevHub API}
  spec.homepage      = "https://github.com/plated/vantiv-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'selenium-webdriver'
  spec.add_dependency 'webrick'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency 'dotenv'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
