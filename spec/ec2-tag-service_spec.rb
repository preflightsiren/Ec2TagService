require 'spec_helper'

describe "Sinatra App" do

  it "should respond to GET" do
    get '/'
    last_response.should be_ok
    last_response.body.should match(/It works!/)
  end

  it "should get tags for an instance ID" do
    get '/'
    last_response.should be_ok
  end

  it "should return an error when the instance ID is invalid" do
    get '/bad-instance-id'
    last_response.should be_ok
    last_response.body.should match(/not found/)
  end
end
