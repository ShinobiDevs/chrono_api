# ChronoApi

ChronoAPI is a client interface to a simple timer API located at [https://chrono-api.herokuapp.com](https://chrono-api.herokuapp.com).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'chrono_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install chrono_api

## Usage

### Creating a Timer

```ruby
ChronoApi.create_timer!
# => {"uuid"=>"92e367d1480bcbe5ed72f5fb7e68e32f2353d97136eb539309330efe93b36ae2", "started_at"=>1475746749, "ended_at"=>nil, "seconds_passed"=>0}
```

### Checking a Timer

```ruby
ChronoApi.get_timer("92e367d1480bcbe5ed72f5fb7e68e32f2353d97136eb539309330efe93b36ae2")
# => {"uuid"=>"92e367d1480bcbe5ed72f5fb7e68e32f2353d97136eb539309330efe93b36ae2", "started_at"=>1475746749, "ended_at"=>nil, "seconds_passed"=>19}
```

### Stopping a Timer

```ruby
ChronoApi.stop_timer("92e367d1480bcbe5ed72f5fb7e68e32f2353d97136eb539309330efe93b36ae2")
# => response code 204 on success, 404 if not found
```

### Deleting a Timer
```ruby
ChronoApi.delete_timer("92e367d1480bcbe5ed72f5fb7e68e32f2353d97136eb539309330efe93b36ae2")
# => response code 204 on success, 404 if not found
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/chrono_api. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
