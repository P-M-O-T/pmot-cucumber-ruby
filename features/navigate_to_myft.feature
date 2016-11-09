@ pmot
Feature: Signed in subscriber can navigate to myFT

  Scenario Outline: Navigate to myFT from the home page myFT icon
    Given a subscriber is on the "Front Page"
    When they click the myft icon on the "<location>"
    Then they should be navigated to the myFT page

  Examples:
  | location       |
  | top right      |
  | menu           |
  | myft_component |
  | email_digest   |

  Scenario: Navigate to myFT from the myFT email digest
    Given a subscriber is on the "Email Preview"
    When they click the myft icon in the email
    Then they should be navigated to the myFT page




#  Scenario: Navigate to myFT from the myFT link in the menu
#    Given a subscriber is on the "Front Page"
#    When they click the myft icon on the top right
#    Then they should be navigated to the myFT page
#
#  Scenario: Navigate to myFT from the myFT component on the front page
#    Given a subscriber is on the "Front Page"
#    When they click the myft icon on the top right
#    Then they should be navigated to the myFT page
#
