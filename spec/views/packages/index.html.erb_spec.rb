require 'spec_helper'

describe "packages/index" do
  before(:each) do
    assign(:packages, [
      stub_model(Package,
        :name => "Name",
        :description => "MyText",
        :count => 1
      ),
      stub_model(Package,
        :name => "Name",
        :description => "MyText",
        :count => 1
      )
    ])
  end

  it "renders a list of packages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
