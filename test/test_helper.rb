ENV["RAILS_ENV"] ||= "test"
require_relative '../config/environment'
require_relative '../config/boot'
require 'rails/test_help'

require 'dotenv'
Dotenv.load

# Load all support files
Dir[File.expand_path('support/**/*.rb', __dir__)].each { |f| require f }
