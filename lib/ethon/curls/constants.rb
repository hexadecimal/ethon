# frozen_string_literal: true

module Ethon
  module Curl
    # :nodoc:
    VERSION_NOW = 6

    # Flag. Initialize SSL.
    GLOBAL_SSL     = 0x01
    # Flag. Initialize win32 socket libraries.
    GLOBAL_WIN32   = 0x02
    # Flag. Initialize everything possible.
    GLOBAL_ALL     = (GLOBAL_SSL | GLOBAL_WIN32)
    # Flag. Initialize everything by default.
    GLOBAL_DEFAULT = GLOBAL_ALL

    # :nodoc:
    EasyCode = enum(:easy_code, easy_codes)
    # :nodoc:
    MultiCode = enum(:multi_code, multi_codes)

    # :nodoc:
    EasyOption = enum(:easy_option, easy_options(:enum).to_a.flatten)
    # :nodoc:
    MultiOption = enum(:multi_option, multi_options(:enum).to_a.flatten)

    # Used by curl_debug_callback when setting CURLOPT_DEBUGFUNCTION, refer
    # https://github.com/bagder/curl/blob/master/include/curl/curl.h#L378 for details
    DebugInfoType = enum(:debug_info_type, debug_info_types)

    # :nodoc:
    InfoType = enum(info_types.to_a.flatten)

    # Info details, refer
    # https://github.com/bagder/curl/blob/master/src/tool_writeout.c#L66 for details
    Info = enum(:info, infos.to_a.flatten)

    # Form options, used by FormAdd for temporary storage, refer
    # https://github.com/bagder/curl/blob/master/lib/formdata.h#L51 for details
    FormOption = enum(:form_option, form_options)

    # :nodoc:
    MsgCode = enum(:msg_code, msg_codes)

    VERSION_IPV6         = (1 << 0)  # IPv6-enabled
    VERSION_KERBEROS4    = (1 << 1)  # Kerberos V4 auth is supported (deprecated)
    VERSION_SSL          = (1 << 2)  # SSL options are present
    VERSION_LIBZ         = (1 << 3)  # libz features are present
    VERSION_NTLM         = (1 << 4)  # NTLM auth is supported
    VERSION_GSSNEGOTIATE = (1 << 5)  # Negotiate auth is supported (deprecated)
    VERSION_DEBUG        = (1 << 6)  # Built with debug capabilities
    VERSION_ASYNCHDNS    = (1 << 7)  # Asynchronous DNS resolves
    VERSION_SPNEGO       = (1 << 8)  # SPNEGO auth is supported
    VERSION_LARGEFILE    = (1 << 9)  # Supports files larger than 2GB
    VERSION_IDN          = (1 << 10) # Internationized Domain Names are supported
    VERSION_SSPI         = (1 << 11) # Built against Windows SSPI
    VERSION_CONV         = (1 << 12) # Character conversions supported
    VERSION_CURLDEBUG    = (1 << 13) # Debug memory tracking supported
    VERSION_TLSAUTH_SRP  = (1 << 14) # TLS-SRP auth is supported
    VERSION_NTLM_WB      = (1 << 15) # NTLM delegation to winbind helper is supported
    VERSION_HTTP2        = (1 << 16) # HTTP2 support built-in
    VERSION_GSSAPI       = (1 << 17) # Built against a GSS-API library
    VERSION_KERBEROS5    = (1 << 18) # Kerberos V5 auth is supported
    VERSION_UNIX_SOCKETS = (1 << 19) # Unix domain sockets support
    VERSION_PSL          = (1 << 20) # Mozilla's Public Suffix List, used for cookie domain verification
    VERSION_HTTPS_PROXY  = (1 << 21) # HTTPS-proxy support built-in
    VERSION_MULTI_SSL    = (1 << 22) # Multiple SSL backends available
    VERSION_BROTLI       = (1 << 23) # Brotli features are present.
    VERSION_ALTSVC       = (1 << 24) # Alt-Svc handling built-in
    VERSION_HTTP3        = (1 << 25) # HTTP3 support built-in
  end
end
