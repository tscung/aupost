# Aupost

This is a JSON warapper for Auspost API. Please refer to the details spec here:

https://developers.auspost.com.au/apis/pac/reference


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'aupost'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install aupost

## Usage

 	$ client = Aupost::Client.new("YOUR AUPOST KEY HERE")

 	$ client.domestic_postcode_search("can")

 	$ client.domestic_postcode_search("canning vale", "WA")

 	$ client.country

 	$ client.domestic_letter_thickness

 	$ client.domestic_letter_weight

 	$ client.domestic_letter_size

 	$ client.international_letter_weight

 	$ client.international_parcel_weight

 	$ client.domestic_parcel_weight

 	$ client.domestic_parcel_type

 	$ client.domestic_parcel_size

 	$ client.postage_letter_domestic_service

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/tscung/aupost/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
