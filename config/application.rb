require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module MyApp
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

    # Use SQL instead of Active Record's schema dumper when creating the database (for QueueClassic)
    # This is necessary if your schema can't be completely dumped by the schema dumper,
    # like if you have constraints or database-specific column types
    config.active_record.schema_format = :sql

    # Tell Unicorn to log to STDOUT on Heroku
    config.logger = Logger.new(STDOUT) unless Rails.env.development?

    # Raise errors when an unpermitted param is sent to a controller action
    ActiveRecord::Base.send(:include, ActiveModel::ForbiddenAttributesProtection)

    config.app_uri = URI.parse ENV!['APP_URI']

    # ActionMailer Config with Mandrill from Mailchimp for transactional mail
    config.action_mailer.delivery_method = ENV!['MAIL_DELIVERY_METHOD'].to_sym
    if config.action_mailer.delivery_method == :smtp
      config.action_mailer.smtp_settings = {
        address:   'smtp.mandrillapp.com',
        port:      587,
        enable_starttls_auto: true,
        user_name: ENV!['MANDRILL_USERNAME'],
        password:  ENV!['MANDRILL_APIKEY'],
        authentication: :plain,
        domain: config.app_uri.host
      }
    end

    config.action_mailer.perform_deliveries    = true
    config.action_mailer.raise_delivery_errors = false
    config.action_mailer.default charset: "utf-8"
    config.action_mailer.default_url_options = { protocol: config.app_uri.scheme, host: config.app_uri.host }
    config.action_mailer.asset_host = config.app_uri.to_s
  end
end

Mail.register_interceptor RecipientInterceptor.new(ENV!['EMAIL_RECIPIENTS']) if ENV!['EMAIL_RECIPIENTS'] && defined?(Mail) && !Rails.env.test?
