require 'spec_helper'

describe "businesses/edit" do
  before(:each) do
    @business = assign(:business, stub_model(Business,
      :name => "MyString",
      :street_address => "MyString",
      :additional => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip_code => 1,
      :description => "MyText",
      :user_id => 1
    ))
  end

  it "renders the edit business form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", business_path(@business), "post" do
      assert_select "input#business_name[name=?]", "business[name]"
      assert_select "input#business_street_address[name=?]", "business[street_address]"
      assert_select "input#business_additional[name=?]", "business[additional]"
      assert_select "input#business_city[name=?]", "business[city]"
      assert_select "input#business_state[name=?]", "business[state]"
      assert_select "input#business_zip_code[name=?]", "business[zip_code]"
      assert_select "textarea#business_description[name=?]", "business[description]"
      assert_select "input#business_user_id[name=?]", "business[user_id]"
    end
  end
end
