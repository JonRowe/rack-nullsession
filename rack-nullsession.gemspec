# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/null_session/version'

Gem::Specification.new do |gem|
  gem.name          = "rack-nullsession"
  gem.version       = Rack::NullSession::VERSION
  gem.authors       = ["Jon Rowe"]
  gem.email         = ["hello@jonrowe.co.uk"]
  gem.description   = %q{A Rack Middleware that fakes a session}
  gem.summary       = %q{A Rack Middleware that fakes a session}
  gem.homepage      = "https://github.com/JonRowe/rack-nullsession"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = []
  gem.test_files    = gem.files.grep(%r{^(spec)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency "rack"

  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec"
end
