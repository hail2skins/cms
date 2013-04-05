require 'spec_helper'

describe "owners/new" do
  before(:each) do
    assign(:owner, stub_model(Owner,
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :password_digest => "MyString"
    ).as_new_record)
  end

  it "renders new owner form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", owners_path, "post" do
      assert_select "input#owner_first_name[name=?]", "owner[first_name]"
      assert_select "input#owner_last_name[name=?]", "owner[last_name]"
      assert_select "input#owner_email[name=?]", "owner[email]"
      assert_select "input#owner_password_digest[name=?]", "owner[password_digest]"
    end
  end
end
