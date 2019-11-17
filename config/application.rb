require_relative 'boot'

require "rails"
# Pick the frameworks you want:
%w(
  active_model
  active_job
  action_controller
  action_mailer
  action_view
  sprockets
  neo4j
).each do |framework|
  begin
    require "#{framework}/railtie"
  rescue LoadError
  end
end
require "action_cable/engine"
require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Teleos
  class Application < Rails::Application

    config.generators { |g| g.orm :neo4j }

    config.neo4j.session.options = {
      faraday_configurator: proc do |faraday|
        # The default configurator uses typhoeus (it was `Faraday::Adapter::NetHttpPersistent` for `neo4j-core` < 7.1.0), so if you override the configurator you must specify this
        faraday.adapter :typhoeus
        # Optionally you can instead specify another adaptor
        # faraday.use Faraday::Adapter::NetHttpPersistent

        # If you need to set options which would normally be the second argument of `Faraday.new`, you can do the following:
        faraday.options[:open_timeout] = 5
        faraday.options[:timeout] = 65
        # faraday.options[:ssl] = { verify: true }
      end
    }

    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
