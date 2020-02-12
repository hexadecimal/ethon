# Changelog

## 1.0.0

### Added

* Upgrade `VERSION_NOW` from 3 to 6
* Add `tlsv1_3` option for `:sslversion` CURLOPT
* Add new error codes
  * (easy) no_connection_available
  * (easy) ssl_pinnedpubkeynotmatch
  * (easy) ssl_invalidcertstatus
  * (easy) http2_stream
  * (easy) recursive_api_call
  * (easy) ftp_weird_server_reply => weird_server_reply
  * (easy) obsolete16 => http2
  * (easy) peer_failed_verification => obsolete51
  * (easy) ssl_cacert => peer_failed_verification
  * (multi) added_already
  * (multi) recursive_api_call
* Add new constants (`lib/ethon/curls/constants.rb`)
  * VERSION_KERBEROS5
  * VERSION_UNIX_SOCKETS
  * VERSION_PSL
  * VERSION_HTTPS_PROXY
  * VERSION_MULTI_SSL
  * VERSION_BROTLI
  * VERSION_ALTSVC
  * VERSION_HTTP3

### Removed

* Remove `khstat` from easy options
* Drop curl 7.62- support
* Drop Ruby 2.5- support
* Drop Windows support
* Remove all deprecated methods
* Do not log results to stderr/stdout after `perform` methods
* Remove feature checks (`Ethon::Easy::Features` module), port some code to `spec/spec_helper.rb`

### Internal

* Remove unused/redundant dependencies from development and test environments
* Remove profiler code (`profile/` folder)
* Freeze strings
* Style formatting
