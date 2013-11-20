# To enable turn formatting, set the TURN_FORMAT variable to one of the following:
#   pretty, dot, cue, marshal, outline, or progress
# or set to true (or on, yes, or 1) to use the default turn format
if ENV['TURN_FORMAT'].to_s !~ /^(|false|0|off|no|pride)$/i
  require 'turn/autorun'

  if ENV['TURN_FORMAT'] =~ /^(on|yes|1|true)$/i
    ENV['TURN_FORMAT'] = Turn.config.format.to_s
  else
    Turn.config.format = ENV['TURN_FORMAT'].intern
  end
else
  require 'minitest/pride'
end
