require 'spec_helper'

describe "packages/show" do
  before(:each) do
    @package = assign(:package, stub_model(Package,
      :name => "Name",
      :description => "MyText",
      :count => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
  end
end
