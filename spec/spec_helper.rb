ENV['JETS_TEST'] = '1'
ENV['JETS_ENV'] ||= 'test'
# Ensures aws api never called. Fixture home folder does not contain ~/.aws/credentails
ENV['HOME'] = 'spec/fixtures/home'

require 'fileutils'
require 'jets'

abort('The Jets environment is running in production mode!') if Jets.env == 'production'
Jets.boot

require 'jets/spec_helpers'
