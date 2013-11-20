VCR.configure do |c|
  c.cassette_library_dir = 'test/fixtures/vcr_cassettes'
  c.default_cassette_options = { record: :new_episodes }
  c.hook_into :faraday, :webmock
  c.ignore_hosts 'localhost', '127.0.0.1', '0.0.0.0'

  # Don't record any value that is configured in .env, since all of these
  # are developer-specific, and don't belong in the repo.
  Dotenv.load.keys.each do |key|
    c.filter_sensitive_data("<#{key}>") { ENV[key] }
  end
end
