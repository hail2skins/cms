require 'spec_helper'

describe "services/new" do
  before(:each) do
    assign(:service, stub_model(Service,
      :name => "MyString",
      :description => "MyString",
      :cost => 1,
      :business_id => 1
    ).as_new_record)
  end

  it "renders new service form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", services_path, "post" do
      assert_select "input#service_name[name=?]", "service[name]"
      assert_select "input#service_description[name=?]", "service[description]"
      assert_select "input#service_cost[name=?]", "service[cost]"
      assert_select "input#service_business_id[name=?]", "service[business_id]"
    end
  end
end
