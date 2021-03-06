Feature: Signing Up
	In order to track my customers and utilize the Hamco Internet Solutions CMS
	As an owner of a business with customers
	I want to visit a page to sign up

	Scenario: Visiting the sign up page
		Given I am at the home page of the site
		When I click the link to sign up
		Then I should be on the sign up page
		And be able to fill in my information
		And when I submit my information
		Then I should be created successfully and taken to my owner page