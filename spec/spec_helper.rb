require 'rubygems'
require 'bundler/setup'
require 'rspec'
require 'vcr_setup'
require 'golfscrape'
require 'active_support/core_ext'

RSpec.configure do |config|
  config.extend VCR::RSpec::Macros
end
