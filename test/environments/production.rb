require 'test_helper'
require 'production'

describe "Production Environment" do
  it "only allows SSL in production" do
    Rails.application.config.force_ssl.must_equal true
  end

  #TODO: Check all the different production env configs (fonts in pipeline, caching, etc)
end
