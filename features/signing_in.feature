Feature: Signing in
  In order to use the site
  As a user
  I want to be able to sign in

  Scenario: Signing in via confirmation
    Given there are the following users:
      | email             | password | unconfirmed |
      | user@ticketeeme.com | password | true        |
    And "user@ticketeeme.com" opens the email with subject "Confirmation instructions"
    And they click the first link in the email
    Then I should see "Your account was successfully confirmed"
    And I should see "Signed in as user@ticketeeme.com"

 Scenario: Signing in via form
   Given there are the following users:
      |email | password|
      |user@ticketeeme.com| password|
   And I am signed in as them
  

