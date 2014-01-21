require 'spec_helper'

describe "visits/edit" do
  before(:each) do
    @visit = assign(:visit, stub_model(Visit,
      :visit_notes => "MyText",
      :customer_id => 1
    ))
  end

  it "renders the edit visit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", visit_path(@visit), "post" do
      assert_select "textarea#visit_visit_notes[name=?]", "visit[visit_notes]"
      assert_select "input#visit_customer_id[name=?]", "visit[customer_id]"
    end
  end
end
