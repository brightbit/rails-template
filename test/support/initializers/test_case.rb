require 'database_cleaner'
DatabaseCleaner.clean_with(:truncation)
DatabaseCleaner.strategy = :transaction

class ActiveSupport::TestCase
  include MiniTest::Metadata
  include FactoryGirl::Syntax::Methods

  ActiveRecord::Migration.check_pending!

  # Leave db cleanup to the master--DatabaseCleaner
  self.use_transactional_fixtures = false

  before do
    DatabaseCleaner.clean
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.start
  end
end
