source 'https://rubygems.org'

ruby '2.1.0' # Tell heroku to use ruby 2.1.0

gem 'rails', '4.1.0.beta1'

gem 'american_date', '~> 1.1.0'     # American style month/day/year date parsing
gem 'dalli',         '~> 2.7.0'     # High performance memcached client
gem 'pg',            '~> 0.17.1'    # Postgres ActiveRecord adapter
gem 'unicorn',       '~> 4.7.0'     # HTTP server for fast clients on low-latency, high-bandwidth connections

# Asset related gems
gem 'coffee-rails',   '~> 4.0.0'
gem 'jquery-rails',   '~> 3.0.4'
gem 'momentjs-rails', '~> 2.5.0'
gem 'sass-rails',     '~> 4.0.0.rc1'
gem 'turbolinks',     '~> 2.1.0'
gem 'uglifier',       '~> 2.4.0'

gem 'jbuilder', '~> 1.2' # Build JSON APIs with ease

gem 'sdoc', group: :doc, require: false # bundle exec rake doc:rails generates the API under doc/api

group :development do
  gem 'spring' # Spring speeds up development by keeping your application running in the background
  gem 'thin'   # Fast threaded HTTP server for local development
end

group :development, :test do
  gem 'dotenv-rails'        # Autoload ENV vars in .env
  gem 'minitest-spec-rails' # MiniTest integration for Rails 3 and 4
  gem 'pry-awesome_print'   # Auto AP in pry
  gem 'pry-rails'           # Interactive REPL debugger
  gem 'pry-plus'            # Add a bunch of awesome pry stuff (rescue, stack_explorer, doc)
end
