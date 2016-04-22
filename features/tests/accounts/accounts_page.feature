Feature: Accounts Page displays correct number of accounts

  As a customer who signed up for a sandbox account, I can view all of the accounts that I have created

  Scenario Outline: The correct number of accounts are displayed when I view the Accounts page
    Given I log in as "<email>" with password "<password>"
    When I go to the Accounts page
    Then "<number_accounts>" accounts are displayed

    Examples:
      | email	                   | password | number_accounts |
      | rebecca.mayes3@comcast.net | Recurly1 | 20              |
      | no_accounts@gmail.com      | Recurly1 | 0               |
