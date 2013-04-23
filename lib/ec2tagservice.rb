require 'sinatra/base'

class Ec2TagService < Sinatra::Base 
  def instance_tags instance_id
    "Searching for #{instance_id}"
  end

  get '/' do
    "Hello World!"
  end

  get '/:instance_id' do
    "Looking up tags for #{params[:instance_id]}"
  end
end

Ec2TagService.run!
