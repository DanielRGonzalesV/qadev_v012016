# Owner Feature: Daniel Gonzales
# This feature covers the options to do searched in google search

Feature: Google search
  In order to find items
  As an user
  I want to be able to search with Google
 
Scenario: Google search
    Given I want to search in Google
    When I search for "Gherkins Tutorial"
    Then I should see "Search results" for "Gherkins tutorial"

Scenario: Google search press "Google search" button
    Given I want to search in Google
    When I fill in "search field" with "Gherkins Tutorial"
    And I press in "Google search" button
    Then I should see "Search results" for "Gherkins tutorial"

Scenario: Google search press Enter key
    Given I want to search in Google
    When I fill in "search" field with "Gherkins Tutorial"
    And I press enter key
    Then I should see "Search results" for "Gherkins tutorial"

Scenario: Google search press "I'm feeling lucky" button
    Given I want to search in Google
    When I fill in "search" field with "Gherkins Tutorial"
    And I press in "I'm feeling lucky" button
    Then I should see "Search results" for "Gherkins tutorial"