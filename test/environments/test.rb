require 'test_helper'
require 'test'

describe "Test Environment" do
  describe "Gems" do
    it "has minitest-reporters" do
      defined?(Minitest::Reporters).wont_be_nil
    end

    it "has pry" do
      defined?(Pry).wont_be_nil
    end
  end
end
