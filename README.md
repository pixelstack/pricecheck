# Pricecheck

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/pricecheck`. To experiment with that code, run `bin/console` for an interactive prompt.

Stripe is awesome, but when you want to include fees in your charges, it
can hurt your brain to calculate what the actual charge needs to be.
This is where pricecheck solves this problem for you. Simply enter the
amount you wish to receive after stripe has taken its required fees,
adjust fees and charge percentage (add tax percentage if your country
requires tax) and you will be returned with the amount to charge which
will include all fees.

For example:
Jane is selling shirts for $15. If Jane sent a charge of $15 to stripe,
she would end up with less than $15 due to fees.
With the help of the gem, Jane can ask what amount needs to be charged
to allow her to receive $15 into her bank account.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pricecheck'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pricecheck

## Usage

You can use this gem in two ways:
- Use it in an IRB instance and call `Pricecheck::Charge.new(12500 , 30, 2.9).total`
- Use it in a ruby application and call `Pricecheck::Charge.new(12500 , 30, 2.9).total`

The gem takes 3 required arguments, as well as an optional 4th argument.
These being, in order:
- The amount you wish to receive after all fees (in cents)
- The charge fee (in cents)
- The charge percentage (as a full amount, eg if 2.9% enter 2.9)
- Tax percentage (optional)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/pixelstack/pricecheck. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

