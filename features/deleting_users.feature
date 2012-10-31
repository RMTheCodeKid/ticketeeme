Feature: Deleting Users
  In order to remove users
  As an admin
  I want to click a button and delete them

  Background:
    Given there are the following users:
      |email|password|admin|
      |admin@ticketeeme.com|password|true|
      |user@ticketeeme.com|password|false|
    And I am signed in as "admin@ticketeeme.com"
    Given I am on the homepage
    When I follow "Admin"
    And I follow "Users"

  Scenario: Deleting a user
    And I follow "user@ticketeeme.com"
    When I follow "Delete User"
    Then I should see "User has been deleted"

  Scenario: Users cannot delete themselves
    When I follow "admin@ticketeeme.com"
    And I follow "Delete User"
    Then I should see "You cannot delete yourself!"
