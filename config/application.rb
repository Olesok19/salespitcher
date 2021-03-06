require_relative 'boot'

require 'rails/all'
require 'sprockets/railtie'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Staffapp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Custom directories with classes and modules you want to be autoloadable.
    # config.autoload_paths << Rails.root.join('lib')
    # config.autoload_paths << Rails.root.join('vendor')

    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters += [:password]

    # Enable escaping HTML in JSON.
    config.active_support.escape_html_entities_in_json = true

    # Enable the asset pipeline
    config.assets.enabled = true

    # Version of your assets, change this if you want to expire all your assets
    config.assets.version = '1.0'

    config.active_job.queue_adapter = :sidekiq

    # Default headers
    config.action_dispatch.default_headers = {
      'X-XSS-Protection' => '1; mode=block',
      'X-Content-Type-Options' => 'nosniff',
      'X-Frame-Options' => 'SAMEORIGIN'
    }

    ActionDispatch::Callbacks.after do
      # Reload the factories
      if Rails.env.development?
        unless FactoryBot.factories.blank? # first init will load factories, this should only run on subsequent reloads
          FactoryBot.sequences.clear
          FactoryBot.factories.clear
        end
      end
    end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
