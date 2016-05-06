# Owner Feature: Daniel Gonzales
# This feature covers the options to do enter an account

Feature: Enter to account

 
Scenario: Enter to the page with credential valids 
    Given I select "Sign in"
    Given I select "create and acount"
    When I need to enter to a account
    And I press in "Sign in" or "create and acoount" button
    Then I should see the "account main" page 
    Then I should see the "create a new account" page 