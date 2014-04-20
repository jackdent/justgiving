# JustGiving

A Ruby REST client for the JustGiving API

## Installation

Add this line to your application's Gemfile:

    gem 'justgiving'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install justgiving

## Usage

Require the justgiving gem

    require 'justgiving'

Create a new API client instance, passing your api key to the new method. For example,

    client = JustGiving::Search.new({YOUR_API_KEY})

Available clients are: Charity, Country, Currency, Donation, Search. You can then call methods on your client, for example

    client.search_charities({q: 'Macmillan'})

To view the available methods for each client, browse the /lib/justgiving directory.

Create a new client

## Contributing

1. Fork it ( https://github.com/jackdent/justgiving/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
