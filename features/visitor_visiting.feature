Feature: Visitor Visiting
	In order to see the home page of the Hamco Internet Solutions CMS page
	As a visitor who has not signed up
	I should see a default landing page with basic information about the site
	that allows me to sign up.

	Scenario: Visiting the home page
		Given I am at the home page of the site as a guest
		And I can see the site is in alpha testing
		And I can see a link to sign up
		And I can see links to help, about and contact
		Then I can click help, about and contact links from the home page
		