@api
Feature: Test out Behat with Drupal

	Scenario: Admin wants to edit an article 
		Given I am logged in as a user with the administrator role
		Then I should be able to edit an article
