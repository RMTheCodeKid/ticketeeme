Feature: Assigning permissions
  In order to set up users with the correct permissions
  As an admin 
  I want to check all the boxes

  Background:
    Given there are the following users:
      | email              | password | admin |
      | admin@ticketeeme.com | password | true  |
    And I am signed in as them
    
    And there are the following users:
      | email             | password |
      | user@ticketeeme.com | password |
    And there is a project called "TextMate 2"
    And "user@ticketeeme.com" has created a ticket for this project:
      | title  | description       |
      | Shiny! | Eye-blindingly so |

    When I follow "Admin"
    And I follow "Users"
    And I follow "user@ticketeeme.com"
    And I follow "Permissions"

  Scenario: Viewing a project
    When I check "View" for "TextMate 2"
    And I press "Update"
    And I follow "Sign out"

    Given I am signed in as "user@ticketeeme.com"
    Then I should see "TextMate 2"