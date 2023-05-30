# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tradier/version'

Gem::Specification.new do |gem|
  gem.name        = 'tradier'
  gem.version     = Tradier::VERSION
  gem.homepage    = 'https://github.com/tradier/tradier.rb'

  gem.author      = ["Steve Agalloco", "Jason Barry"]
  gem.email       = ['steve.agalloco@gmail.com', 'jay@jcbarry.com']
  gem.description = "Rubygem for interacting with the Tradier API."
  gem.summary     = gem.description

  gem.license     = 'MIT'

  gem.add_dependency 'faraday', '~> 1'
  gem.add_dependency 'faraday_middleware', '~> 1.2'
  gem.add_dependency 'celluloid', '~> 0.18'
  gem.add_dependency 'multi_json', '~> 1.15'
  gem.add_development_dependency 'bundler', '~> 2'

  gem.files = %w(.yardopts LICENSE.md README.md Rakefile tradier.gemspec)
  gem.files += Dir.glob("lib/**/*.rb")
  gem.files += Dir.glob("spec/**/*")

  gem.test_files = Dir.glob("spec/**/*")

  gem.require_paths = ['lib']
end
