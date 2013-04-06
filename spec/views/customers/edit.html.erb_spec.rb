require 'spec_helper'

describe "customers/edit" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :phone => 1,
      :business_id => 1,
      :referred_by => "MyString"
    ))
  end

  it "renders the edit customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", customer_path(@customer), "post" do
      assert_select "input#customer_first_name[name=?]", "customer[first_name]"
      assert_select "input#customer_last_name[name=?]", "customer[last_name]"
      assert_select "input#customer_email[name=?]", "customer[email]"
      assert_select "input#customer_phone[name=?]", "customer[phone]"
      assert_select "input#customer_business_id[name=?]", "customer[business_id]"
      assert_select "input#customer_referred_by[name=?]", "customer[referred_by]"
    end
  end
end
