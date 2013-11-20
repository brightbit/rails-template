class ActionDispatch::IntegrationTest
  include Rails.application.routes.url_helpers
  include Capybara::DSL

  before do
    if metadata[:js]
      Capybara.current_driver = Capybara.javascript_driver
      metadata[:db_clean_strategy] = :truncation
    end
  end

  after do
    Capybara.reset_sessions!    # Forget the (simulated) browser state
    Capybara.use_default_driver # Revert Capybara.current_driver to Capybara.default_driver
  end
end
