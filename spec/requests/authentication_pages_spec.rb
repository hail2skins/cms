require 'spec_helper'

describe "Authentication" do

  subject { page }

  describe "signin page" do
    before { visit signin_path }

    it { should have_selector('h1',    text: 'Sign in') }

    describe "signin with invalid information" do
    	before { click_button "Sign in" }

    	it { should have_selector('div.alert.alert-error', text: 'Invalid') }
 
 			describe "after visiting another page" do
    		before { click_link "Home" }
    		it { should_not have_selector('div.alert.alert-error') }
    	end
    end

    describe "signin with valid information" do
    	let(:owner) { FactoryGirl.create(:owner) }
    	before do
    		fill_in "Email",			with: owner.email.upcase
    		fill_in "Password",       	with: owner.password 
    		click_button "Sign in"
    	end

    	it { should have_link('Businesses', href: owner_business_path(owner)) }
    	it { should_not have_link('Sign in', href: signin_path) } 
    end

  end
end