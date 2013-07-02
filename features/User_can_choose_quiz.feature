Feature: User can choose a quiz
user can choose a quiz level

scenario: happy path
When I select a quiz
And I click "submit"
Then I should be sent to next page