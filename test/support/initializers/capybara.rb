require 'capybara/rails'
require 'capybara/poltergeist'

# This hack is to surpress warnings in Mavericks. See: https://github.com/ariya/phantomjs/issues/11418#issuecomment-26938117
class Capybara::Poltergeist::Client
  private

  def redirect_stdout
    orig_stdout = STDOUT.dup
    orig_stdout.autoclose = false
    $stdout = @write_io
    STDOUT.reopen(@write_io)

    orig_stderr = STDERR.dup
    orig_stderr.autoclose = false
    $stderr = @write_io
    STDERR.reopen(@write_io)

    yield
  ensure
    STDOUT.reopen(orig_stdout)
    $stdout = STDOUT
    STDERR.reopen(orig_stderr)
    $stderr = STDERR
  end
end

class WarningSuppressor
  def self.write(message)
    if message =~ /QFont::setPixelSize: Pixel size <= 0|CoreText performance note:/
      0
    else
      puts message
      1
    end
  end
end

Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, phantomjs_logger: WarningSuppressor)
end

Capybara.register_driver :poltergeist_debug do |app|
  Capybara::Poltergeist::Driver.new(app, inspector: true, debug: true)
end

Capybara.default_driver    = :rack_test
Capybara.javascript_driver = :poltergeist
