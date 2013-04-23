require File.expand_path(File.dirname(__FILE__) + '/config.rb')
require 'json'


def config
	{
		:region => "ap-southeast-2",
		:ec2_region => "ap-southeast-2",
		:ec2_endpoint => "ec2.ap-southeast-2.amazonaws.com"
	}
end

def lookup_tags instance_id
	AWS.config( config )
	ec2 = AWS::EC2.new( config )
	tags = ec2.instances[instance_id].tags
	hash = Hash.new
	tags.each do |k,v|
		hash = hash.merge(Hash[k,v])
	end
	JSON.generate(hash)
end


# puts ec2.instances.inject({}) { |m, i| m[i.id] = i.status; m }
# puts ec2.config.ec2_region
# puts lookup_tags 'i-953461af'