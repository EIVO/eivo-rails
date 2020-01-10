# EIVO Rails

[![Gem Version](https://badge.fury.io/rb/eivo-rails.svg)](http://badge.fury.io/rb/eivo-rails)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'eivo-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install eivo-rails -N

## Usage

If you don't have a Ruby On Rails project:

	$ rails new ../example/ -d postgresql --skip-action-mailer --skip-action-mailbox --skip-action-text --skip-active-storage --skip-action-cable --skip-spring --skip-turbolinks --skip-test --skip-system-test --skip-bootsnap
 
Then:

	$ rails g eivo:install

Add missing credentials:

	$ rails credentials:edit

```
sentry:
  dsn: ""
```

## License

This project is released under the MIT license. See the LICENSE file for more info.
