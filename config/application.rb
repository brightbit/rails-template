require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

raise %Q(
  Please set an APP_NAME environment variable in .env.
  If you are initializing this app, run bin/setup to copy over the example .env.
) unless ENV['APP_NAME']

Object.const_set(ENV.fetch('APP_NAME').camelize, Module.new do
  const_set :Application, Class.new(Rails::Application) do
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Use SQL instead of Active Record's schema dumper when creating the database (for QueueClassic)
    config.active_record.schema_format = :sql

    # Raise errors when an unpermitted param is sent to a controller action
    ActiveRecord::Base.send(:include, ActiveModel::ForbiddenAttributesProtection)

    # Add the fonts path
    config.assets.paths << Rails.root.join('app', 'assets', 'fonts')

    # Precompile additional assets
    config.assets.precompile += %w(.svg .eot .woff .ttf)
  end
end)
