# RomanNumber

[![Build Status](https://travis-ci.org/JochenFromm/RomanNumber.svg)](https://travis-ci.org/JochenFromm/RomanNumber)

Just a simple gem to convert Roman Numbers to integers and back :-)

Roman numerals are simple I means 1, V means 5, X equals 10, and M is 1000. Thus MMXV means 2015, etc, see http://en.wikipedia.org/wiki/Roman_numerals

Remember "all the sea a drop in the universe [..] all the present time is a point in eternity"

~ Marcus Aurelius, Meditations, Book VI, Written 167 AD

## Requirements

  - Ruby 2.1.2

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'RomanNumber'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install RomanNumber

## Usage

Usage is simple

    $ RomanNumber::Converter.convert_roman("MMCDXCIX")
    > 2499

    $ RomanNumber::Converter.convert_int(2499)
    > "MMCDXCIX"

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/JochenFromm/RomanNumber/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
