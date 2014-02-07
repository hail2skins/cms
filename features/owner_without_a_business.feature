Feature: Owner without a business
	In order to add my first business
	As an owner who just signed up
	I should be on my profile page and have the ability to create a new business

	Scenario: Owner creating first business
		Given I am an owner successfully signed in
    When I am on my owner profile page
		Then I should be told I should create a business
		And I should see a link to create a business
		And when I click the link to create a business
		Then I should be on the new business page