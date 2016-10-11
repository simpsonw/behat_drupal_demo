@api
Feature: A user logs in to the site

Scenario: A user is greeted when they log in
Given users:
| name    | mail                      |
| dracula | dracula@email.arizona.edu |
And I am logged in as "dracula"
Then I should see the message "Hello, dracula!" 