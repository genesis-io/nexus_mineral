# frozen_string_literal: true

source 'https://rubygems.org'

ruby '2.6.5'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'graphiti-rails'
gem 'kaminari'
gem 'pg', '0.20'
gem 'rack-cors'
gem 'rails', '~> 6.0.0'
gem 'redis', '~> 4.0'
gem 'responders'
gem 'vandal_ui'

group :development, :test do
  gem 'factory_bot_rails', '~> 4.0'
  gem 'faker'
  gem 'graphiti_spec_helpers'
  gem 'pry-rails'
  gem 'pry-stack_explorer'
  gem 'rspec-rails'
  gem 'rubocop'
  gem 'rubocop-performance'
  gem 'rubocop-rails'
  gem 'rubocop-rspec'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
end

group :test do
  gem 'database_cleaner'
  gem 'shoulda-matchers', '~> 3.1'
end
