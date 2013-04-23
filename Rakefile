# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "ec2-tag-service"
  gem.homepage = "http://github.com/preflightsiren/ec2-tag-service"
  gem.license = "MIT"
  gem.summary = %Q{A REST service to query ec2 tags based upon an ec2 instanceid}
  gem.description = %Q{makes it easier to query ec2 tags for your ec2 instances}
  gem.email = "sebastian.paris@gmail.com"
  gem.authors = ["Sebastian Cole"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

