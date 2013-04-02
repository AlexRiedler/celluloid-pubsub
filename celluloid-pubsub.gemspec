# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'celluloid-pubsub/version'

Gem::Specification.new do |gem|
  gem.name          = "celluloid-pubsub"
  gem.version       = Celluloid::Pubsub::VERSION
  gem.authors       = ["Alex Riedler"]
  gem.email         = ["alex@riedler.ca"]
  gem.description   = %q{A publisher/subscriber implementation for celluloid web sockets}
  gem.summary       = %q{}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'reel'

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
end
