require 'spec_helper'

describe "gift_certs/index" do
  before(:each) do
    assign(:gift_certs, [
      stub_model(GiftCert,
        :name => "Name",
        :number => 1,
        :value => 2,
        :description => "MyText",
        :customer_id => 3,
        :redeemed => ""
      ),
      stub_model(GiftCert,
        :name => "Name",
        :number => 1,
        :value => 2,
        :description => "MyText",
        :customer_id => 3,
        :redeemed => ""
      )
    ])
  end

  it "renders a list of gift_certs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
