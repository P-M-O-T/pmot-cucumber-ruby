Feature: As a subscriber a user will like to search the website for specific content

  Scenario: User can search for content on the Financial Times site
    Given a user is on the Financial Times site
    When they click the search icon
    And they search "bitcoin"
    And they click the first suggested match
    Then financial times should return results for "bitcoin"
