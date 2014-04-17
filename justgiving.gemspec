# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'justgiving/version'

Gem::Specification.new do |spec|
  spec.name          = "justgiving"
  spec.version       = Justgiving::VERSION
  spec.authors       = ["Jack Dent"]
  spec.email         = ["jack@jackdent.co.uk"]
  spec.summary       = %q{A Ruby REST client for the JustGiving API}
  # spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = "http://www.github.com/jackdent/justgiving"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "curb"
end
