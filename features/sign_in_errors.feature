Feature: Incorrect creditials show error messages

Scenario: Email and password cannot be left blank and the following errors are displayed
    Given a Random User visits Sign In page
    And email and password are left blank
    Then error "Email is required" is shown
    And error "Password is required" is shown

Scenario: Incorrect credentials lead to the following errors
    Given a Random User visits Sign In page
    When email and password are incorrect 1 times
    Then error "Incorrect email or password" is shown

Scenario: Failing to login with incorrect credentials 3 times in a row with the same email displays a popup with a warning
    Given a Random User visits Sign In page
    When email and password are incorrect 3 times
    Then error "Account Lockout: Warning" is shown
    And error "This is the third consecutive failed attempt to login with email address" is shown
    And Random User email is shown
  
Scenario: Failing to login with incorrect credentials 5 times in a row with the same email displays a popup with a warning
    Given a Random User visits Sign In page
    When email and password are incorrect 3 times
    And the Random User clicks "I understand" in the warning popup
    And email and password are incorrect 2 times
    Then error "Account Lockout" is shown
    And error "Too many consecutive attempts to log in with email address" is shown
    And error "If an account exists with this email address, it has been locked." is shown
    And Random User email is shown
