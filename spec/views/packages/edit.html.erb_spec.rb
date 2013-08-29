require 'spec_helper'

describe "packages/edit" do
  before(:each) do
    @package = assign(:package, stub_model(Package,
      :name => "MyString",
      :description => "MyText",
      :count => 1
    ))
  end

  it "renders the edit package form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", package_path(@package), "post" do
      assert_select "input#package_name[name=?]", "package[name]"
      assert_select "textarea#package_description[name=?]", "package[description]"
      assert_select "input#package_count[name=?]", "package[count]"
    end
  end
end
