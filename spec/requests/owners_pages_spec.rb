require 'spec_helper'

describe "Owner pages" do

  subject { page }

  describe "signup page" do
    before { visit signup_path }

    let(:submit) { "Create my account" }

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(Owner, :count)
      end
    end

     describe "with valid information" do
      before do
        fill_in "First name",   with: "Example"
        fill_in "Last name",    with: "User"
        fill_in "Email",        with: "user@example.com"
        fill_in "Password",     with: "foobar"
        fill_in "Confirmation", with: "foobar"
      end

      it "should create a user" do
        expect { click_button submit }.to change(Owner, :count).by(1)
      end

      it { should have_link('Businesses') }

      describe "followed by signout" do
        before { click_link "Sign out" }
        it { should have_link('Sign in') }
      end
    end
  end

  describe "show page" do
  	let(:owner) { FactoryGirl.create(:owner) }
  	before { visit owner_path(owner) }

  	it { should have_selector('h1', text: owner.name) }
  end
end