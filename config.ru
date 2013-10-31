# This file is used by Rack-based servers to start the application.

require File.expand_path('config/environment', __dir__)
use Rack::CanonicalHost, ENV['CANONICAL_HOST'] if ENV['CANONICAL_HOST']

run Rails.application
