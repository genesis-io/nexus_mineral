require_relative 'boot'

require "rails"
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
# require "sprockets/railtie"
# require "rails/test_unit/railtie"

Bundler.require(*Rails.groups) if defined?(Bundler)

module NexusMineral
  class Application < Rails::Application
    config.time_zone = 'UTC'
    config.debug_exception_response_format = :api
    config.load_defaults 5.2
  end
end
