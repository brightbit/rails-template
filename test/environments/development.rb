require 'test_helper'
require 'development'

describe "Development Environment" do
  describe "Gems" do
    it "has dotenv" do
      defined?(Dotenv).wont_equal nil
    end
  end
end
