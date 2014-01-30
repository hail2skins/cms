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
  pending # express the regexp above with the code you wish you had
end