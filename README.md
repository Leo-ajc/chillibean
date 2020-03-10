# Quick start

## Install OSX

  Requires Docker Desktop

  Check that your screen sharing settings have permission.

Then run these commands:

Build the services
```docker-compose build```

Bash into the service
```docker-compose run ruby bash```

Run
```open vnc://:secret@0.0.0.0:5900```

Run
```./cucumber_report.sh```

---

## Test instructions

Login Page Feature:
https://chillipharm.com/sign_in

Using the login link above, create automated tests that verify the following conditions are met:

Email and password cannot be left blank and the following errors are displayed if the are:
	* "Email is required"
	* "Password is required"

Incorrect credentials displays
	* "Incorrect email or password"

Failing to login with incorrect credentials three times in a row with the same email displays a popup with the message:
	* Account Lockout: Warning
	* This is the third consecutive failed attempt to login with email address <email>.

Failing to login with incorrect credentials five times in a row with the same email displays a popup with the message:
	* Account Lockout
	* Too many consecutive attempts to log in with email address: <email>.
	* If an account exists with this email address, it has been locked.

Technical requirements:
	* Use Cucumber
	* Use Selenium
	* Generate a dated report file with the test results
	* Submit the work as a public Github repository
	* Use the GitHub readme page to describe any set up and how to run the tests

