@home_screen
Feature: Home screen default behaviors

  Background:
    Given I land on home screen

  @default
  Scenario Outline: Default values on home screen are Foot and Centimeter
    Then left unit picker value should be in "<start_unit>"
    And right unit value should be in "<end_unit>"
    Examples:
    |start_unit|end_unit|
    |Foot|Centimeter|

  Scenario: Show all button should be enabled at launch
    Then Show All button should be "disabled"
    When I press on a number button
    Then Show All button should be "enabled"
    When I press on Clear button
    Then Show All button should be "disabled"

  Scenario Outline: Verify default conversion
    When I type "<target>" to target text field
    Then I should see results as "<result>"
  Examples:
    |target|result|
    |10     |304.8   |
    |2      |60.96   |
    |9      |274.32  |

  Scenario: User is able to add current conversion to Favorites list
    Then I press on Add to Favorites icon
    And I press on menu icon
    And I select "Favorite conversions"
    And I verify "Length" added to Favortie conversions list

  @flaky
  Scenario: User able to search by existing Conversion type
    Then I press on search icon
    Then I type "Temperature" in search field
    And I press return button on soft keyboard
    Then I see "Temperature" as a current unit converter
    Then left unit picker value should be in "Celsius"
    And right unit value should be in "Fahrenheit"

  Scenario Outline: User able to select values for unit pickers
    Then I select "<unit>" from left unit picker
    And I press "<value>" on application keyboard
    Then I should see results as "<result>"
  Examples:
    | unit   | value | result  |
    | Inch   | 1     | 2.54    |
    | Fathom | 1     | 182.88    |
    | Meter  | 1     | 100       |

  Scenario: User able to convert values
    When I press on menu icon
    Then I select "Volume"
    Then I select "Pint" from left unit picker
    Then I select "Quart" from right unit picker
    And I press "1" on application keyboard
    Then I should see results as "0.5"

  Scenario: User is able to switch values
    Then left unit picker value should be in "Foot"
    And right unit value should be in "Centimeter"
    When I press on switch button
    Then left unit picker value should be in "Centimeter"
    And right unit value should be in "Foot"
