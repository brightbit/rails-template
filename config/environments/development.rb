MyApp::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = true

  # Cache stuff in memcache
  config.cache_store = :mem_cache_store, { expires_in: 10.minutes }

  # Open email in browser or send via smtp
  if ENV['EMAIL_RECIPIENTS'] == 'letter_opener'
    config.action_mailer.delivery_method = :letter_opener
  end

  # Enable serving of images, stylesheets, and JavaScripts from an asset server for mailers.
  config.action_mailer.asset_host = "http://localhost:3000"

  # Raise real errors in development
  config.action_mailer.raise_delivery_errors = true

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Add the fonts path
  config.assets.paths << Rails.root.join('app', 'assets', 'fonts')

  # Precompile additional assets
  config.assets.precompile += %w( .svg .eot .woff .ttf )

  # Configure Bullet
  config.after_initialize do
    Bullet.enable = true
    Bullet.console = true
    Bullet.rails_logger = true
  end

  BetterErrors::Middleware.allow_ip! ENV['BETTER_ERRORS_TRUSTED_IP'] if (IPAddr(ENV['BETTER_ERRORS_TRUSTED_IP']) rescue false)
end
