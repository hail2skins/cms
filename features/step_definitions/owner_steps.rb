Given(/^I am an owner successfully signed in$/) do
  create_owner
  sign_in
  page.should have_title(@owner.name)
end

When(/^I am on my owner profile page$/) do
  page.should have_title(@owner.name)
end

Then(/^I should be told I should create a business$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see a link to create a business$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^when I click the link to create a business$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should be on the new business page$/) do
  pending # express the regexp above with the code you wish you had
end