source 'https://rubygems.org'

ruby '2.1.0' # Tell heroku to use ruby 2.1.0

gem 'rails', '4.1.0.beta1'

gem 'american_date',       '~> 1.1.0'     # American style month/day/year date parsing
gem 'dalli',               '~> 2.7.0'     # High performance memcached client
gem 'pg',                  '~> 0.17.1'    # Postgres ActiveRecord adapter
gem 'queue_classic',       '~> 3.0.0rc'   # Backgrounding queue that uses postgres for its queue
gem 'rack-canonical-host', '~> 0.0.8'     # Automatically redirect to canonical host
gem 'unicorn',             '~> 4.7.0'     # HTTP server for fast clients on low-latency, high-bandwidth connections

# Asset related gems
gem 'coffee-rails',   '~> 4.0.0'     # Add Coffescript support to the asset pipeline
gem 'font_assets',    '~> 0.1.10'    # Addresses Access-Control-Allow-Origin asset problems in Firefox
gem 'jquery-rails',   '~> 3.0.4'     # jQuery 1.10 for pipeline
gem 'momentjs-rails', '~> 2.5.0'     # JavaScript Time Library
gem 'sass-rails',     '~> 4.0.0.rc1' # CSS3 extension (mixins, variables, nesting, etc)
gem 'turbolinks',     '~> 2.1.0'     # Makes following links in your web application faster
gem 'uglifier',       '~> 2.4.0'     # Makes your JS ugly (compressed)

gem 'jbuilder', '~> 1.2' # Build JSON APIs with ease

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
