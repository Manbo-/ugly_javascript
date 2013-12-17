# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ugly_javascript/version'

Gem::Specification.new do |spec|
  spec.name          = "ugly_javascript"
  spec.version       = UglyJavascript::VERSION
  spec.authors       = ["Manbo-"]
  spec.email         = ["manbo-@server.fake"]
  spec.description   = %q{output ugly javascript}
  spec.summary       = %q{output ugly javascript}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rails"
  spec.add_dependency "uglifier"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "pry"
end
