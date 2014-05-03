# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'holy_cow/version'

Gem::Specification.new do |spec|
  spec.name          = "holy_cow"
  spec.version       = HolyCow::VERSION
  spec.authors       = ["Brian Samson"]
  spec.email         = ["brian@briansamson.com"]
  spec.summary       = "Dead Simple e-mail notification for developers"
  spec.description   = %q{holy_cow "I can't believe it's this easy to get notification about what's happening in my app."}
  spec.homepage      = "http://github.com/tenforwardconsulting/holy_cow"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "actionmailer"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
