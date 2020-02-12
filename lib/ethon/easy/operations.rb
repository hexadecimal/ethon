# frozen_string_literal: true

module Ethon
  class Easy
    # This module contains the logic to prepare and perform an easy.
    module Operations
      # Returns a pointer to the curl easy handle.
      #
      # @example Return the handle.
      #   easy.handle
      #
      # @return [ FFI::Pointer ] A pointer to the curl easy handle.
      def handle
        @handle ||= FFI::AutoPointer.new(Curl.easy_init, Curl.method(:easy_cleanup))
      end

      # Sets a pointer to the curl easy handle.
      # @param [ ::FFI::Pointer ] Easy handle that will be assigned.
      def handle=(h)
        @handle = h
      end

      # Perform the easy request.
      #
      # @example Perform the request.
      #   easy.perform
      #
      # @return [ Integer ] The return code.
      def perform
        @return_code = Curl.easy_perform(handle)
        complete
        @return_code
      end

      # Clean up the easy.
      #
      # @example Perform clean up.
      #   easy.cleanup
      #
      # @return the result of the free which is nil
      def cleanup
        handle.free
      end
    end
  end
end
