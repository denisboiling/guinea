Feature: Partners

  Scenario: Show on main page
    Given there is a partner with the url "http://drunk-hedgehogs.com"
    When I am on the root page
    Then I should see "Наши партнеры"
    And I should see partner's logo with the link "http://drunk-hedgehogs.com"
