# RomanNumber

[![Build Status](https://travis-ci.org/JochenFromm/RomanNumber.svg)](https://travis-ci.org/JochenFromm/RomanNumber)

Just a simple gem to convert Roman Numbers to integers and back :-)

Roman Numerals was the numeric system used in Ancient Rome. It was were the standard numbering system in Ancient Rome and Europe until about 900 AD. The system is simple (unless you do not try to add, subtract or multiply numbers). The numbers 1 to 10 can be expressed in Roman numerals as follows: I, II, III, IV, V, VI, VII, VIII, IX, X. There are seven basic symbols: I, V, X, L, C, D and M. I means 1, V means 5, X equals 10, L is 50, C is 100, D means 500 and M is 1000. Thus MMXV means 2015, etc, see for example

- http://en.wikipedia.org/wiki/Roman_numerals
- http://www.livescience.com/32052-roman-numerals.html

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
