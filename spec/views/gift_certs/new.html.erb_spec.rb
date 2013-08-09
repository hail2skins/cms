require 'spec_helper'

describe "gift_certs/new" do
  before(:each) do
    assign(:gift_cert, stub_model(GiftCert,
      :name => "MyString",
      :number => 1,
      :value => 1,
      :description => "MyText",
      :customer_id => 1,
      :redeemed => ""
    ).as_new_record)
  end

  it "renders new gift_cert form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", gift_certs_path, "post" do
      assert_select "input#gift_cert_name[name=?]", "gift_cert[name]"
      assert_select "input#gift_cert_number[name=?]", "gift_cert[number]"
      assert_select "input#gift_cert_value[name=?]", "gift_cert[value]"
      assert_select "textarea#gift_cert_description[name=?]", "gift_cert[description]"
      assert_select "input#gift_cert_customer_id[name=?]", "gift_cert[customer_id]"
      assert_select "input#gift_cert_redeemed[name=?]", "gift_cert[redeemed]"
    end
  end
end
