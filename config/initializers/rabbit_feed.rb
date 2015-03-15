# Define the events (if producing)
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

# Consumer
EventRouting do
  accept_from('beavers') do
    event('user_creates_beaver') do |event|
      Rails.logger.fatal(event.payload)
    end
    event('user_updates_beaver') do |event|
      Rails.logger.fatal(event.payload)
    end
  end
end

RabbitFeed.instance_eval do
  self.log                     = Logger.new (Rails.root.join 'log', 'rabbit_feed.log')
  self.environment             = Rails.env
  self.configuration_file_path = Rails.root.join 'config', 'rabbit_feed.yml'
end