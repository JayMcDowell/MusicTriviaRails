Feature: User can enter initials
  In order to play the quiz
  As a user
  I want to enter my initials

  Scenario: Happy Path
    Given the user "jmm"
    When I go to the homepage
    And I click "submit"
    Then I should be sent to next page
