# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gem_deps/version'

Gem::Specification.new do |gem|
  gem.name          = "gem_deps"
  gem.version       = GemDeps::VERSION
  gem.authors       = ["George Opritescu"]
  gem.email         = ["ssscripting@gmail.com"]
  gem.description   = %q{TODO: Simple way to check the versions of gems on a specific environment}
  gem.summary       = %q{TODO: Simple way to check the versions of gems on a specific environment}
  gem.homepage      = "https://github.com/International/gem_deps"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
