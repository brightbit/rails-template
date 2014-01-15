ENV!.config do
  # Force app to redirect to a specified domain
  use 'CANONICAL_HOST',           default: false
  use 'APP_URI',                  'E.g. http://localhost:3000'

  use 'MAIL_DELIVERY_METHOD',     default: :smtp, class: Symbol
  if ENV!['MAIL_DELIVERY_METHOD'] == :smtp
    use 'MANDRILL_USERNAME',      'Configured automatically by the Mandrill Heroku addon'
    use 'MANDRILL_APIKEY',        'Configured automatically by the Mandrill Heroku addon'
  end

  use 'EMAIL_RECIPIENTS',         default: nil
  use 'BETTER_ERRORS_TRUSTED_IP', default: nil

  use 'RAILS_SECRET_TOKEN', <<-DESC
To quickly generate a 64-byte token, you can use:

ruby -r 'securerandom' -e 'puts SecureRandom.urlsafe_base64(64)'

And to configure heroku:
heroku config:add RAILS_SECRET_TOKEN=$(ruby -r 'securerandom' -e 'puts SecureRandom.urlsafe_base64(64)') -r production
                            DESC

  use 'TURN_FORMAT',              default: false
end
