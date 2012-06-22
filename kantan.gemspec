$:.unshift File.expand_path('../lib', __FILE__)
require 'kantan/version'

Gem::Specification.new do |gem|
  gem.name          = 'kantan'
  gem.version       = Kantan::VERSION

  gem.date          = `date +%Y-%m-%d`

  gem.author        = 'Jacob Gillespie'
  gem.email         = 'me@jacobwg.com'
  gem.homepage      = 'https://github.com/jacobwg/kantan'
  gem.summary       = 'Easy and simple deployments of any application'
  gem.description   = 'Similar to Heroku, but on your own hardware'

  gem.require_paths = %w( lib )

  gem.bindir        = 'bin'
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }

  # gem.add_development_dependency 'rspec'
  gem.add_runtime_dependency 'thor'
end