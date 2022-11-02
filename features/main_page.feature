@main_page @web
Feature: Main Page features
  Login to app

  @main_page1
  Scenario: Create Account as a Client
    Given I navigate to the home page
    When I open Login page
    When I click Sign up button
    When I fill form with random data
    Then I click Create account button
    Then I see Client Main Page

  @main_page2
  Scenario: Create Account as a Tasker
    Given I navigate to the home page
