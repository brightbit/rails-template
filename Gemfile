source 'https://rubygems.org'

ruby '2.0.0' # Tell heroku to use ruby 2.0.0

gem 'rails', '4.0.0' # Latest version of the best web framework in the world

gem 'american_date',                '~> 1.1.0'     # American style month/day/year date parsing
gem 'authority',                    '~> 2.9.0'     # Authorize user actions in your Rails app
gem 'bootstrap-sass',               '~> 3.0.0.0'     # Twitter Bootstrap front-end framework
gem 'carrierwave',                  '~> 0.9.0'     # Server side file uploads (hand off from s3_direct_upload)
gem 'coffee-rails',                 '~> 4.0.0'     # Outside assets for respondes to coffee
gem 'compass-rails',                '~> 1.1.2'     # CSS framework
gem 'dalli',                        '~> 2.6.4'     # Caching with Memcached
gem 'devise',                       '~> 3.1.1'     # Authentication with Warden
gem 'env_bang-rails',               '0.2.5'        # Enforce configuration of environment variables
gem 'fog',                          '~> 1.14.0'    # Ruby cloud services library (used by carrierwave)
gem 'font_assets',                  '~> 0.1.10'    # Addresses Access-Control-Allow-Origin asset problems in Firefox
gem 'has_scope',                    '~> 0.5.1'     # Easy controller scopes
gem 'high_voltage',                 '~> 2.0.0'     # Static pages
gem 'jquery-fileupload-rails',      '~> 0.4.1'     # Direct upload files to S3
gem 'jquery-rails',                 '~> 3.0.4'     # jQuery yo
gem 'memcachier',                   '~> 0.0.2'     # Simple memcachier configuration
gem 'mini_magick',                  '~> 3.6.0'     # Image resizing for carrierwave
gem 'momentjs-rails',               '~> 2.2.1'     # JS time library
gem 'newrelic_rpm',                 '~> 3.6.8.168' # Production monitoring
gem 'nprogress-rails',              '~> 0.1.2.2'   # Loading bar for turbolinks
gem 'pg',                           '~> 0.17.0'    # Postgres ActiveRecord adapter
gem 'queue_classic',                '~> 2.2.3'     # Backgrounding queue that uses postgres for db
gem 'rack-canonical-host',          '~> 0.0.8'     # Automatically redirect to canonical host
gem 'rack-mini-profiler',           '~> 0.1.29'    # Middleware that displays speed badge for every html page
gem 'redcarpet',                    '~> 3.0.0'     # Add markdown parsing and rendering
gem 'responders',                   '~> 1.0.0.rc'  # Minimal controllers via responders.yml
gem 'retina_tag',                   '~> 1.2.2'     # Retina image tags
gem 'rolify',                       '~> 3.3.0.rc4' # Role management library with resource scoping
gem 'rollout',                      '~> 2.0.0'     # Feature flipper
gem 's3_direct_upload',             '~> 0.1.6'     # Client-side straight-to-s3 file uploads
gem 'sass-rails',                   '~> 4.0.0'     # CSS3 extension (mixins, variables, nesting, etc)
gem 'selectize-rails',              '~> 0.8.1'     # Textbox/select autocopmlete for tagging and contact lists
gem 'simple_form',                  '~> 3.0.0.rc'  # Simplified DSL for forms'''
gem 'slim-rails',                   '~> 2.0.3'     # Our favorite Ruby templating engine for html
gem 'turbolinks',                   '~> 1.3.0'     # Makes following links in your web application faster
gem 'uglifier',                     '>= 1.0.3'     # Makes your JS ugly (compressed)
gem 'unicorn',                      '~> 4.6.2'     # HTTP server for fast clients on low-latency, high-bandwidth connections
gem 'validates_existence',          '~> 0.8.0'     # Validates Rails model belongs_to association existence
gem 'will_paginate',                '~> 3.0.5'     # Pagination

group :development do
  gem 'awesome_print'         # Inspect your objects with style (and color)
  gem 'brakeman'              # Security auditing
  gem 'bullet'                # Finds your N+1 problems
  gem 'foreman'               # Manage Procfile-based applications (run multiple ruby processes by running foreman)
  gem 'binding_of_caller'     # Provide advanced features for better_errors pages
  gem 'better_errors'         # More helpful error pages in development
  gem 'letter_opener'         # Open development emails in a browser instead of sending them
  gem 'lol_dba'               # Scan your models for columns that (probably) should be indexed
  gem 'quiet_assets'          # No more "Served asset" in your logs
  gem 'rails_best_practices'  # Code metric tool for showing best practices you're missing out on
  gem 'switch_user'           # Easily switch users in dev
  gem 'thin'                  # Fast threaded HTTP server for local development
  gem 'traceroute'            # Finds unused routes
  gem 'xray-rails'            # See into your views to easily open a partial from your browser
end

group :development, :test do
  gem 'dotenv-rails'          # Autoload ENV vars in .env
  gem 'pry-awesome_print'     # Auto AP in pry
  gem 'pry-rails'             # Interactive REPL debugger
  gem 'pry-plus'              # Add a bunch of awesome pry stuff (rescue, stack_explorer, doc)
  gem 'pry-remote'            # Use pry with pow
  gem 'recipient_interceptor' # Intercept recipients when delivering email with the Mail gem
  gem 'table_print'           # Explore your ActiveRecord data with ease
end

group :test do
  gem 'capybara'                  # Acceptance test framework
  gem 'capybara_minitest_spec'    # Integrates capybara and minitest; Duh
  gem 'database_cleaner'          # Cleans db between test runs
  gem 'factory_girl_rails'        # For stubbing/creating objects with factories
  gem 'minitest-metadata'         # Metadata (key-value) support for minitest/spec
  gem 'minitest-spec-rails'       # Nice minitest integration with Rails
  gem 'poltergeist'               # Uses phantomjs to headlessly test your views
  gem 'simplecov', require: false # Test coverage reporting
  gem 'timecop'                   # Freeze/change time for your tests
end

group :staging, :production do
  gem 'rails_12factor',  '~> 0.0.2'  # Heroku gem for logging and asset serving
  gem 'heroku',          '~> 3.0.1' # For continous deployment
end

group :production do
  gem 'airbrake', '~> 3.1.12' # Logs exceptions on airbrake.io
end
