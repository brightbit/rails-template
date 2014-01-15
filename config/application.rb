require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MyApp
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Use SQL instead of Active Record's schema dumper when creating the database (for QueueClassic)
    config.active_record.schema_format = :sql

    # Raise errors when an unpermitted param is sent to a controller action
    ActiveRecord::Base.send(:include, ActiveModel::ForbiddenAttributesProtection)
  end
end
