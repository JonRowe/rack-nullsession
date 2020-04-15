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

  if RUBY_VERSION.to_f < 2
    gem.add_development_dependency "rake", '~> 10.0'
  else
    gem.add_development_dependency "rake", '~> 12.3.3'
  end

  gem.add_development_dependency "rspec", "~> 3.9.0"
end
