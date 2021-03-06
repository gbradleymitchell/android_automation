Feature: Gestures are able to be used

  Scenario: User able to swipe to open Left side menu
    Given I land on home screen
    When I swipe from left to right
    Then I should see left side menu
    And I swipe from right to left
    And I see "Length" as a current unit converter

  @flaky
  Scenario: User able to swipe to open Right side calculator
    Given I land on home screen
    When I swipe from right to left
    Then I see "Calculator" as a current unit converter
    And I swipe from left to right
    And I see "Length" as a current unit converter
