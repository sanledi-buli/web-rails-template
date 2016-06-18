require File.expand_path('../boot', __FILE__)

require "rails"
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"

Bundler.require(*Rails.groups)

module WebRailsTemplate
  class Application < Rails::Application
    config.generators.assets = false
    config.generators.helper = false
    config.active_record.raise_in_transactional_callbacks = true
    config.generators do |g|
      g.factory_girl false
    end
  end
end
