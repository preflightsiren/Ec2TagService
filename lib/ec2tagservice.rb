require 'sinatra/base'
require File.expand_path(File.dirname(__FILE__) + '/config.rb')
require File.expand_path(File.dirname(__FILE__) + '/ec2lookup.rb')

class Ec2TagService < Sinatra::Base 

  set :bind, '0.0.0.0'

  def instance_tags instance_id
    "Searching for #{instance_id}\n\n"
  end

  get '/' do
    "Hello World!"
  end

  get '/:instance_id.?:format?' do
    content_type 'text/plain'
    #pass unless request.accept? 'application/json'
    tags = lookup_tags params[:instance_id]
    
    case params[:format]
    when nil
      output = String.new
      tags.each do |tag, value|
        output << "#{tag}=#{value}\n"
      end
      output
    when 'json'
      JSON.generate(tags)
    when 'ico'
      ''
    else
      raise "Sorry, #{params[:format]} formatting is not yet supported."
    end
  end
end

