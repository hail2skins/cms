require 'spec_helper'

describe "Static Pages" do

  subject { page }

  describe "Home page" do
   before { visit root_path }
  
    it { should have_selector('h1', text: 'Customer Management') }
  end

  describe "Help page" do
    it "should have the h1 'Help'" do
      visit help_path
      page.should have_selector('h1', text: 'Help')
    end
  end

    describe "About page" do
    it "should have the h1 'About'" do
      visit about_path
      page.should have_selector('h1', text: 'About')
    end
  end

end
