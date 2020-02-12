# frozen_string_literal: true

module Ethon
  module Curl
    # :nodoc:
    class MsgData < ::FFI::Union
      layout :whatever, :pointer, :code, :easy_code
    end

    # :nodoc:
    class Msg < ::FFI::Struct
      layout :code, :msg_code, :easy_handle, :pointer, :data, MsgData
    end

    class VersionInfoData < ::FFI::Struct
      layout :curl_version, :uint8,
             :version, :string,
             :version_num, :int,
             :host, :string,
             :features, :int,
             :ssl_version, :string,
             :ssl_version_num, :long,
             :libz_version, :string,
             :protocols, :pointer
    end

    # :nodoc:
    class FDSet < ::FFI::Struct
      FD_SETSIZE = ::Ethon::Libc.getdtablesize
      layout :fds_bits, [:long, FD_SETSIZE / ::FFI::Type::LONG.size]

      # :nodoc:
      def clear
        super
      end
    end

    # :nodoc:
    class Timeval < ::FFI::Struct
      layout :sec, :time_t, :usec, :suseconds_t
    end
  end
end
