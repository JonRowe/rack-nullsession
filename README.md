# Rack::Nullsession
[![Build Status](https://secure.travis-ci.org/JonRowe/rack-nullsession.png)](http://travis-ci.org/JonRowe/rack-nullsession) [![Code Climate](https://codeclimate.com/github/JonRowe/rack-nullsession.png)](https://codeclimate.com/github/JonRowe/rack-nullsession)

What's that? You're writing an API but some pesky Rack Middleware wants
a session? (Looking at you Warden...) Very well... NullSession to the
rescue!

## Installation

Add this line to your application's Gemfile:

    gem 'rack-nullsession'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rack-nullsession

## Usage

Mosey on over to your Rack configuration and...

`require 'rack-nullsession'`

or

`require 'rack/null_session'`

The choice... is yours! Then in your framework, app or rackup file....

`use Rack::NullSession`

Enjoy!

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
