# frozen_string_literal: true

$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'bundler/setup'
Bundler.setup

require 'ethon'
require 'rspec'

require_relative 'support/localhost_server'
require_relative 'support/server'

RSpec.configure do |config|
  config.order = :random
  config.formatter = :documentation

  config.before(:suite) do
    LocalhostServer.new(TESTSERVER.new, 3001)
  end
end

# Ported from Ethon::Easy::Features for backwards compatability with tests
def supports_asynch_dns?
  !!(Ethon::Curl.version_info[:features] & Ethon::Curl::VERSION_ASYNCHDNS)
end

alias supports_timeout_ms? supports_asynch_dns?
