Feature: History screen shows recently used conversions

  Scenario: Initial history is empty
    Given I land on home screen
    And I press on menu icon
    And I select "History"
    Then I see message no history right now

  Scenario: After using a conversion it shows in history
    Given I land on home screen
    And I press on menu icon
    And I select "Volume"
    And I type "10" to target text field
    And I press on menu icon
    And I select "History"
    Then I see "Volume" on History page

  Scenario: history can be cleared
    Given I land on home screen
    And I press on menu icon
    And I select "Volume"
    And I type "10" to target text field
    And I press on menu icon
    And I select "History"
    Then I see "Volume" on History page
    And I click delete history
    And I see message no history right now
