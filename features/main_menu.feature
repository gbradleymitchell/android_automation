@main_menu
Feature: As a user I want to convert units

  Scenario: When I tap on menu item, I should see left side menu
    Given I land on home screen
    When I press on menu icon
    Given I should see left side menu

  Scenario: As a new user, I see message on my conversions screen
    When I land on home screen
    And I press on menu icon
    And I select "My conversions"
    Then I land on my conversions screen
    And I see a special message for me

  Scenario: I can scroll down menu and select Speed conversions
    When I land on home screen
    And I press on menu icon
    And I select Speed
    Then I land on Speed conversions screen
