require File.expand_path('../boot', __FILE__)

require 'rails/all'

SALESFORCE_APP_ID = '3MVG9xOCXq4ID1uHwpuz_gk1vLP4qIlqZUzuspFZ14ufqz0481ZVt5ZTPEgaoW439Cqd8yQD1kTXJRLaaoQ3s'
SALESFORCE_APP_SECRET = '5775174370761877174'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Quickrep
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

  end
end
