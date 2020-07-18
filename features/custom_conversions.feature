Feature: User able to create and manage custom conversion

    Scenario: User able to create new conversion
      Given I land on home screen
      Then I press on menu icon
      Then I select "My conversions"
      Then I press on Create your first conversion button
      And I type "Power" as custom conversion name
      When I press on New unit button
      And I type "Horsepower" as unit name
      And I type "1" as unit value
      Then i press submit checkmark on custom conversion screen
      When I press on New unit button
      And I type "Muleposer" as unit name
      And I type "0.5" as unit value
      Then i press submit checkmark on custom conversion screen
      Then i press final submit checkmark on custom conversion screen
      Then I verify "Power" added to Custom conversions list

