Feature: Subscriber can log in to the Financial Times website

  Scenario Outline: Successful login to the Financial Times website
    Given I am on the "Sign in" page
    When I fill in "email address" field with "<email_address>"
    And I fill in "my password" field with "<my_password>"
    And I click "Sign in" button
    Then I should be logged in successfully
    And I should see My Account

    Examples:
    | email_address         | my_password |
    | nextpremium@ftqa.org  | premium1    |
    | nextstandard@ftqa.org | standard1   |
    | nextregister@ftqa.org | register1   |

