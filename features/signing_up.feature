Feature: Signing Up
	In order to track my customers and utilize the Hamco Internet Solutions CMS
	As an owner of a business with customers
	I want to visit a page to sign up

	Scenario: Visiting the sign up page
		Given I am at the home page of the site
		When I click the link to sign up
		Then I should be able to view a sign up form
		And fill in my information