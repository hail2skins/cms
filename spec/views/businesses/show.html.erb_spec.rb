require 'spec_helper'

describe "businesses/show" do
  before(:each) do
    @business = assign(:business, stub_model(Business,
      :name => "Name",
      :street_address => "Street Address",
      :additional => "Additional",
      :city => "City",
      :state => "State",
      :zip_code => 1,
      :description => "MyText",
      :user_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Street Address/)
    rendered.should match(/Additional/)
    rendered.should match(/City/)
    rendered.should match(/State/)
    rendered.should match(/1/)
    rendered.should match(/MyText/)
    rendered.should match(/2/)
  end
end
