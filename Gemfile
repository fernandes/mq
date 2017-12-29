source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.1.4'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 4.1.1'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2.2'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

gem 'rabbit_feed'
gem 'hutch'
gem 'sinatra'

gem 'country_select'
gem 'devise'
gem 'haml-rails'
gem 'json'
gem 'responders'
gem 'sidekiq'
gem 'simple_form'
group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'guard', require: false
  gem 'guard-rails', require: false
  gem 'guard-bundler', require: false
  gem 'guard-livereload', require: false
  gem 'guard-rspec', require: false
  gem 'guard-sidekiq', require: false
  gem 'letter_opener'
  gem 'listen', '~> 2.7.12'
  gem 'spring-commands-rspec'
  gem 'thin'
  # pry stuff
  gem 'pry', '~> 0.11'
  gem 'pry-rails', '~> 0.3'
  gem 'pry-doc', '~> 0.11'
  gem 'pry-git', '~> 0.2'
  gem 'pry-remote', '~> 0.1'
  gem 'pry-byebug', '~> 3.5'
  gem 'hirb', '~> 0.7'
  gem 'awesome_print', '~> 1.8'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'shoulda-matchers', require: false
end

group :test do
  gem 'capybara'
  gem 'email_spec'
  gem 'turnip'
end
