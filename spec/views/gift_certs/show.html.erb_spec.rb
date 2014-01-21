require 'spec_helper'

describe "gift_certs/show" do
  before(:each) do
    @gift_cert = assign(:gift_cert, stub_model(GiftCert,
      :name => "Name",
      :number => 1,
      :value => 2,
      :description => "MyText",
      :customer_id => 3,
      :redeemed => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/MyText/)
    rendered.should match(/3/)
    rendered.should match(//)
  end
end
