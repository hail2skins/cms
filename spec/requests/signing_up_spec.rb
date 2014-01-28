require 'spec_helper'

feature 'Signing Up' do
	scenario 'Successful sign up' do
		visit '/'

		click_link "Sign up now!"
		fill_in "First name", with: "testing"
		fill_in "Middle name", with: ""
		fill_in "Last name", with: "tester"
		fill_in "Email", with: "test@test.com"
		fill_in "Password", with: "password"
		fill_in "Confirmation", with: "password"

		fill_in "Address 1", with: ""
		fill_in "Address 2", with: ""
		fill_in "City", with: ""
		fill_in "State", with: ""
		fill_in "Zip Code", with: ""

		click_button "Create Owner"
		expect(page).to have_content("Owner was successfully created.")
	end

end