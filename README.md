# MQ

Simple message queue producer/consumer rails app, using:

* [RabbitMQ](https://www.rabbitmq.com/)
* [Rabbit Feed](https://github.com/simplybusiness/rabbit_feed)

## How to reproduce

1. Create a config/rabbit_feed.yml

```yaml
development:
  host: localhost
  user: guest
  password: guest
  application: beavers
```

2. Create a config/initializers/rabbit_feed.rb

Here you define all your events, and how to process them.

```ruby

# Define the events (so we can publish using rails console later)
EventDefinitions do
  define_event('user_creates_beaver', version: '1.0.0') do
    defined_as do
      'A beaver has been created'
    end
    payload_contains do
      field('beaver_name', type: 'string', definition: 'The name of the beaver')
    end
  end

  define_event('user_updates_beaver', version: '1.0.0') do
    defined_as do
      'A beaver has been updated'
    end
    payload_contains do
      field('beaver_name', type: 'string', definition: 'The name of the beaver')
    end
  end
end

# Consumer logging payload to Rails log
EventRouting do
  accept_from('beavers') do
    event('user_creates_beaver') do |event|
      Rails.logger.info(event.payload)
    end
    event('user_updates_beaver') do |event|
      Rails.logger.info(event.payload)
    end
  end
end

RabbitFeed.instance_eval do
  self.log                     = Logger.new (Rails.root.join 'log', 'rabbit_feed.log')
  self.environment             = Rails.env
  self.configuration_file_path = Rails.root.join 'config', 'rabbit_feed.yml'
end
```

3. Create a Procfile to run the consumers

```yaml
web:  bundle exec rails s -p $PORT
mq:   bundle exec rabbit_feed consume --environment development --config config/rabbit_feed.yml
```

## Running

1. bundle install
2. foreman start
3. bundle exec rails c

and produce an event like:

```ruby
RabbitFeed::Producer.publish_event 'user_creates_beaver', { 'beaver_name' => "My Beaver Name" }
```

Its gonna be processed by consumers (logged to Rails)

And that's it! ;)
