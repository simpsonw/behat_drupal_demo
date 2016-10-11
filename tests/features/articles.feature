@api
Feature: Users can read articles 

Scenario: A user is greeted when they read an Article 
Given users:
| name    | mail                      |
| dracula | dracula@email.arizona.edu |
And I am logged in as "dracula"
And I am viewing an Article with the title "Frankenstein"
Then I should see the message "Hello, dracula! You are reading Frankenstein."