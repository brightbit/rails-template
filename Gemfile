source 'https://rubygems.org'

ruby '2.1.1'

gem 'rails', '4.1.0'

gem 'american_date',       '~> 1.1.0'     # American style month/day/year date parsing
gem 'dalli',               '~> 2.7.0'     # High performance memcached client
gem 'pg',                  '~> 0.17.1'    # Postgres ActiveRecord adapter
gem 'queue_classic',       '~> 3.0.0rc'   # Backgrounding queue that uses postgres for its queue
gem 'rack-canonical-host', '~> 0.1.0'     # Automatically redirect to canonical host
gem 'simple_form',         '~> 3.0.1'     # Forms made easy
gem 'unicorn',             '~> 4.8.2'     # HTTP server for fast clients on low-latency, high-bandwidth connections

# Asset/View related gems
gem 'bootstrap-sass', '~> 3.1.1.1'   # Sleek, intuitive, and powerful mobile first front-end framework
gem 'coffee-rails',   '~> 4.0.0'     # Add Coffescript support to the asset pipeline
gem 'font_assets',    '~> 0.1.10'    # Addresses Access-Control-Allow-Origin asset problems in Firefox
gem 'high_voltage',   '~> 2.1.0'     # Easily include static pages
gem 'jquery-rails',   '~> 3.1.0'     # jQuery 1.10 for pipeline
gem 'momentjs-rails', '~> 2.6.0'     # JavaScript Time Library
gem 'sass-rails',     '~> 4.0.3'     # CSS3 extension (mixins, variables, nesting, etc)
gem 'slim-rails',     '~> 2.1.4'     # A fast, lightweight templating engine
gem 'turbolinks',     '~> 2.2.2'     # Makes following links in your web application faster
gem 'uglifier',       '~> 2.5.0'     # Makes your JS ugly (compressed)

gem 'jbuilder', '~> 2.0.7' # Build JSON APIs with ease

gem 'sdoc', group: :doc, require: false # bundle exec rake doc:rails generates the API under doc/api

group :development do
  gem 'spring' # Spring speeds up development by keeping your application running in the background
  gem 'thin'   # Fast threaded HTTP server for local development
end

group :development, :test do
  gem 'autotest-rails'      # Run 'autotest' to continually run your tests on change
  gem 'dotenv-rails'        # Autoload ENV vars in .env
  gem 'minitest-spec-rails' # MiniTest integration for Rails 3 and 4
  gem 'minitest-reporters'  # Customizable MiniTest output formats
  gem 'pry-awesome_print'   # Auto AP in pry
  gem 'pry-rails'           # Interactive REPL debugger
  gem 'pry-plus'            # Add a bunch of awesome pry stuff (rescue, stack_explorer, doc)
end
