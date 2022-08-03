Feature: Login to taskrabbit
  Login to app

  Scenario: Login
    Given I navigate to the home page
    When I open Login page
    When I click Sign up button
    When I fill form with random data
    Then I click Create account button
