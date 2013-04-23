require File.join(File.dirname(__FILE__), '..', 'lib', 'ec2-tag-service.rb')
require 'rspec'
require 'rack/test'

# setup test environment
set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false

def app
  Sinatra::Application
end

RSpec.configure do |config|
  config.include Rack::Test::Methods
end
