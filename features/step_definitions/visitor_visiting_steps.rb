Given(/^I am at the home page of the site as a guest$/) do
  visit '/'
end

Given(/^I can see the site is in alpha testing$/) do
  should have_content("ALPHA")
end

Given(/^I can see a link to sign up$/) do
  page.should have_link("Sign up now!")
end

Given(/^I can see links to help, about and contact$/) do
 	page.should have_link("Help")
 	page.should have_link("About")
 	page.should have_link("Contact")
end

When(/^I click help from the home page$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I see the help page from the home page$/) do
  pending # express the regexp above with the code you wish you had
end