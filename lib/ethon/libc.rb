# frozen_string_literal: true

module Ethon
  # FFI Wrapper module for Libc.
  #
  # @api private
  module Libc
    extend FFI::Library
    ffi_lib 'c'

    attach_function :getdtablesize, [], :int
    attach_function :free, [:pointer], :void
  end
end
