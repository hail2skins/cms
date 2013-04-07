require 'spec_helper'

describe "Customers" do
  describe "GET /customers" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get business_customers_path(business)
      response.status.should be(200)
    end
  end
end
