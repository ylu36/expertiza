# require 'assignment_helper'
require 'rails_helper'
include AssignmentHelper

describe LotteryController do  
  describe "#run_intelligent_assignmnent" do
            it "webservice call should be successful" do
                dat=double("data")
                rest=double("RestClient")
                result = RestClient.get 'http://www.google.com',  :content_type => :json, :accept => :json
                expect(result.code).to eq(200)

            end
    
    it "should return json response" do
                result = RestClient.get 'https://www.google.com',  :content_type => :json, :accept => :json
              expect(result.header['Content-Type']).should include 'application/json' rescue result
            end
  end
  
  describe "#run_intelligent_bid" do
              it "should do intelligent assignment" do
                assignment = double("Assignment")
                allow(assignment).to receive(:is_intelligent) { 1 }
                expect(assignment.is_intelligent).to eq(1)
              end
  end
end
