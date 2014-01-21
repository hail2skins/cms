require 'spec_helper'

describe "businesses/index" do
  before(:each) do
    assign(:businesses, [
      stub_model(Business,
        :name => "Name",
        :street_address => "Street Address",
        :additional => "Additional",
        :city => "City",
        :state => "State",
        :zip_code => 1,
        :description => "MyText",
        :user_id => 2
      ),
      stub_model(Business,
        :name => "Name",
        :street_address => "Street Address",
        :additional => "Additional",
        :city => "City",
        :state => "State",
        :zip_code => 1,
        :description => "MyText",
        :user_id => 2
      )
    ])
  end

  it "renders a list of businesses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Street Address".to_s, :count => 2
    assert_select "tr>td", :text => "Additional".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
