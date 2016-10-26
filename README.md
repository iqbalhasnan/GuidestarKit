# Guidestarkit

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/guidestarkit`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'guidestarkit'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install guidestarkit

## Usage

#### Configuration

```ruby
Guidestarkit.configure do |config|
  config.api_key = ENV.fetch("GUIDESTAR_API_KEY")
  config.api_endpoint = ENV.fetch("GUIDESTAR_API_ENDPOINT")
end
```

#### Query

Search by organization name
```ruby
params = {
  q: "organization_name:college"
}

GuidestarKit.search.query(params)
```

Search by organization name and state Ohio
```ruby
params = {
  q: "organization_name:college AND state:OH"
}

GuidestarKit.search.query(params)
```

Search by organization name on page 2

```ruby
params = {
  q: "organization_name:college",
  p: 2
}

GuidestarKit.search.query(params)
```

Search by organization name on page 2 and showing 20 results per page

```ruby
params = {
  q: "organization_name: High School",
  p: 2,
  r: 20
}

GuidestarKit.search.query(params)
```
## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/iqbalhasnan/guidestarkit. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
