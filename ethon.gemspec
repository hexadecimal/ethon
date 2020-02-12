# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name         = 'ethon'
  s.version      = '1.0.0'
  s.platform     = Gem::Platform::RUBY
  s.authors      = ['Hans Hasselberg']
  s.summary      = 'Lightweight libcurl wrapper.'
  s.description  = 'Ethon provides direct access to libcurl functionality as well as some helpers for doing http requests.'

  s.required_ruby_version     = '>= 2.5.0'
  s.required_rubygems_version = '>= 1.8.11'

  s.license = 'MIT'

  s.add_runtime_dependency 'ffi', '~> 1.11'

  s.files        = Dir["lib/ethon/**/*.rb"]
  s.require_path = 'lib'
end
