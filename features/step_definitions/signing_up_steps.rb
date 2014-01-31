Given(/^I am at the home page of the site$/) do
  visit '/'
end

When(/^I click the link to sign up$/) do
  click_link "Sign up now!"
end

Then(/^I should be on the sign up page$/) do
  find('h1').should have_content("Sign up")
end

Then(/^be able to fill in my information$/) do
  fill_in('First name', with: 'Art')
  fill_in('Middle name', with: '')
	fill_in('Last name', with: 'Mills')
	fill_in('Email', with: 'test@test.com')
	fill_in('Password', with: 'password')
	fill_in('Confirmation', with: 'password')
	should have_content("Please provide an address for you.  We'll get your business address later in the process:")
	fill_in('Address 1', with: '1127 S. Trappers Crossing')
	fill_in('Address 2', with: '')
	fill_in('City', with: 'Hugo')
	fill_in('State', with: 'MN')
	fill_in('Zip', with: '55038')
end

Then(/^when I submit my information$/) do
  click_button('Create Owner')
end

Then(/^I should be created successfully and taken to my owner page$/) do
  should have_content("Owner was successfully created.")
  should have_content("Owner Name: Art Mills")
end
