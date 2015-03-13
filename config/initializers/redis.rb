# config/initializers/redis.rb

$redis = Redis.new(url: (ENV['BOXEN_REDIS_URL'] || 'redis://localhost:6379/'))