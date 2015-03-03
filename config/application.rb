require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module LLRsSteppingStones
  class Application < Rails::Application
    config.assets.paths << Rails.root.join('app', 'assets', 'fonts')
    config.assets.precompile += %w( .svg .eot .woff .ttf )
    config.autoload_paths += %W(#{config.root}/lib)

    I18n.enforce_available_locales = false
    config.active_record.raise_in_transactional_callbacks = true
  end
end
