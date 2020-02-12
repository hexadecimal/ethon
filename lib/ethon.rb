# frozen_string_literal: true

begin
  require 'mime/types/columnar'
rescue LoadError
  begin
    require 'mime/types'
  rescue LoadError
  end
end
require 'logger'
require 'ffi'
require 'tempfile'

require 'ethon/libc'
require 'ethon/curl'
require 'ethon/easy'
require 'ethon/errors'
require 'ethon/loggable'
require 'ethon/multi'

# Base module
module Ethon
end
