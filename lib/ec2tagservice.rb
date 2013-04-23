require 'sinatra/base'
require File.expand_path(File.dirname(__FILE__) + '/config.rb')
require File.expand_path(File.dirname(__FILE__) + '/ec2lookup.rb')

class Ec2TagService < Sinatra::Base 

  def instance_tags instance_id
    "Searching for #{instance_id}\n\n"
  end

  get '/' do
    "Hello World!"
  end

  get '/:instance_id' do
  	pass unless request.accept? 'application/json'
    lookup_tags params[:instance_id]
  end
end

Ec2TagService.run!
