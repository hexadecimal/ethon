# frozen_string_literal: true

module Ethon
  class Easy
    # This module contains the methods to return informations from the easy handle.
    # See https://curl.haxx.se/libcurl/c/curl_easy_getinfo.html for more information.
    module Informations
      # Holds available informations and their type, which is needed to
      # request the informations from libcurl.
      AVAILABLE_INFORMATIONS = {
        # Return the available HTTP authentication methods.
        httpauth_avail: :long,

        # Return the total time in seconds for the previous
        # transfer, including name resolution, TCP connection, etc.
        total_time: :double,

        # Return the time, in seconds, it took from the start
        # until the first byte was received by libcurl. This
        # includes pre-transfer time and also the time the
        # server needs to calculate the result.
        starttransfer_time: :double,

        # Return the time, in seconds, it took from the start
        # until the SSL/SSH connect/handshake to the remote
        # host was completed. This time is most often very near
        # to the pre-transfer time, except for cases such as HTTP
        # pipelining where the pre-transfer time can be delayed
        # due to waits in line for the pipeline and more.
        appconnect_time: :double,

        # Return the time, in seconds, it took from the start
        # until the file transfer was just about to begin. This
        # includes all pre-transfer commands and negotiations
        # that are specific to the particular protocol(s) involved.
        # It does not involve the sending of the protocol-
        # specific request that triggers a transfer.
        pretransfer_time: :double,

        # Return the time, in seconds, it took from the start
        # until the connect to the remote host (or proxy) was completed.
        connect_time: :double,

        # Return the time, in seconds, it took from the
        # start until the name resolution was completed.
        namelookup_time: :double,

        # Return the time, in seconds, it took for all redirection steps
        # include name lookup, connect, pretransfer and transfer before the
        # final transaction was started. time_redirect shows the complete
        # execution time for multiple redirections. (Added in 7.12.3)
        redirect_time: :double,

        # Return the last used effective url.
        effective_url: :string,

        # Return the string holding the IP address of the most recent
        # connection done with this curl handle. This string
        # may be IPv6 if that's enabled.
        primary_ip: :string,

        # Return the last received HTTP, FTP or SMTP response code.
        # The value will be zero if no server response code has
        # been received. Note that a proxy's CONNECT response should
        # be read with http_connect_code and not this.
        response_code: :long,

        # Return number of bytes sent in the issued HTTP requests.
        request_size: :long,

        # Return the total number of redirections that were
        # actually followed.
        redirect_count: :long,
      }

      AVAILABLE_INFORMATIONS.each do |name, type|
        eval "def #{name}; Curl.send(:get_info_#{type}, :#{name}, handle); end"
      end
    end
  end
end
