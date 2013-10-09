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

	Scenario: List Users
		Given I have users email leoncio@email.com, virto@email.com
		When I go to the list of users
		Then I should see "leoncio@email.com"

	Scenario: Edit Users
		Given I create user as leo@user.com with 12345678
		And I have users email leoncio@email.com, virto@email.com
		When I go to the list of users
		And I follow "edit_2"
		And I fill in "Email" with "cocao@email.com"
		And I fill in "Password" with "123123123"
		And I fill in "Password confirmation" with "123123123"
		And I fill in "Current password" with "12345678"	
		And I press "Update"
	
	Scenario: Destroy Users
		Given I have users email leoncio@email.com, virto@email.com
		When I go to the list of users
		And I follow "delete_1"
		Then I should comfirm a javascript dialog
		Given I am on make login
		
		