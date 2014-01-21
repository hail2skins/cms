require 'spec_helper'

describe "packages/new" do
  before(:each) do
    assign(:package, stub_model(Package,
      :name => "MyString",
      :description => "MyText",
      :count => 1
    ).as_new_record)
  end

  it "renders new package form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", packages_path, "post" do
      assert_select "input#package_name[name=?]", "package[name]"
      assert_select "textarea#package_description[name=?]", "package[description]"
      assert_select "input#package_count[name=?]", "package[count]"
    end
  end
end
