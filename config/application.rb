require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SistemaRails
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    config.time_zone = 'Brasilia'
    config.i18n.default_locale = :'pt-BR'
    config.action_mailer.default_url_options = { host: 'http://localhost:3000' }
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
