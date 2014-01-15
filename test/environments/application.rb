require 'test_helper'
require 'mkmf'

describe "General Environment" do
  it "has an application name" do
    # This will need changing when you rename your app manually
    Rails.application.class.parent_name.must_equal "MyApp"
  end

  it "uses american date" do
    DateTime.parse('01/10/1999').month.must_equal 1
  end

  it "has a rails-rename bin" do
    File.size(Rails.root + 'bin/rails-rename').must_equal 589
  end

  it "has a setup bin" do
    File.size(Rails.root + 'bin/setup').must_equal 81
  end

  it "has a .env.example" do
    File.exist?(Rails.root + '.env.example').must_equal true
  end

  it "has a .envrc" do
    File.exist?(Rails.root + '.envrc').must_equal true
  end

  it "has a Procfile" do
    File.exist?(Rails.root + 'Procfile').must_equal true
  end

  it "has a unicorn config" do
    File.exist?(Rails.root + 'config/unicorn.rb').must_equal true
  end

  it "disconnects currently connected database connections" do
    File.size(Rails.root + 'lib/tasks/database_tasks.rake').must_equal 912
  end

  it "will output details on AR validation error" do
    @output = StringIO.new
    @logger = Logger.new(@output)
    Rails.logger = @logger

    class TestImp < ActiveRecord::Base
      def self.columns; []; end; def self.column_types; {}; end # Set up a tableless AR Model

      attr_accessor :name
      validates_presence_of :name
    end

    TestImp.new.save
    @output.string.must_include %Q[WARN -- : TestImp failed to save!]
    @output.string.must_include %Q[WARN -- : Attributes:]
    @output.string.must_include %Q[WARN -- : {"id"=>nil}]
    @output.string.must_include %Q[WARN -- : Errors:]
    @output.string.must_include %Q[WARN -- : Name can't be blank]
  end

  describe "Gems" do
    it "has momentjs available" do
      Rails.application.config.assets.paths.any? {|p| p.include? 'momentjs-rails' }
    end

    it "has dalli available" do
      ActiveSupport::Cache.lookup_store(:dalli_store).stats.values.wont_include nil
    end

    it "has pg available" do
      defined?(PG).wont_be_nil
      ActiveRecord::Base.connection.wont_be_nil
    end

    it "has unicorn available" do
      defined?(Unicorn).wont_be_nil
    end

    it "has autotest-rails available" do
      defined?(Autotest::Rails).wont_be_nil
    end
  end

  describe "Bins" do
    it "has direnv installed and configured" do
      %x[direnv status].must_include 'Found RC allowed true'
      ENV['PATH'].split(':').grep('^bin$').wont_be_nil
      ENV['PATH'].split(':').grep('^vendor/bundle/bin$').wont_be_nil
    end

    it "has autotest" do
      system("command -v autotest >/dev/null 2>&1").must_equal true
    end

    it "has imagemagick" do
      system("command -v identify >/dev/null 2>&1").must_equal true
    end

    it "has phantomjs" do
      system("command -v phantomjs >/dev/null 2>&1").must_equal true
    end
  end
end
