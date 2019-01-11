require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Sensei
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end

Raven.configure do |config|
  config.dsn = 'https://f9ac1d14b22b4da9aa5cbc2a436a772d:3f2916ab304d42d486d63b649b58437f@sentry.io/1369113'
  config.filter_parameters << :password
  config.sanitize_fields = Rails.application.config.filter_parameters.map(&:to_s)
end
