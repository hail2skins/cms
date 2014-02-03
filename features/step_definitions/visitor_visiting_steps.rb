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
 	h = "Help"
 	a = "About"
 	c = "Contact"

 	[h,a,c].each do |link|
 		page.should have_link(link)
 	end
end

Then(/^I can click help, about and contact links from the home page$/) do
 	h = "Help"
 	a = "About"
 	c = "Contact"

 	[h,a,c].each do |link|
 		click_link link
 	end


end

