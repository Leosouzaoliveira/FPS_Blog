Feature: Create User 
		In order to create user
		As an User
		I want to make login and create an user

	Scenario: Create User
		Given I create user as leo@user.com with 12345678

	Scenario: Doing Sign in
		Given I login as leo@user.com with 12345678

	Scenario: Doing Sign out
		Given I create user as leo@user.com with 12345678
		And I am on the list of game
		When I follow "Sign out"
		