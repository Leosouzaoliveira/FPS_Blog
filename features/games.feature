Feature: Create Game
		In order to create game
		As an User
		I want to create and list games

	Background: Create User
		Given I create user as leo@user.com with 12345678

	Scenario: Games List
		Given I have games name Call of Duty, Battlefield
		When I go to the list of game
		Then I should see "Call of Duty"
		And I should see "Battlefield"

	Scenario: Create Game
		Given I am on the list of game
		When I follow "New Game"
		And I fill in "Name" with "Medal of Honor"
		And I select "April 26, 2008" as the "Release date" date
		And I fill in "Character" with "Captan"
		And I press "Create Game"
		Then I should see "Game was successfully created."

	Scenario: Destroy Game
		Given I have games name Call of Duty, BF
		When I go to the list of game
		And I follow "delete_1"
		Then I should comfirm a javascript dialog
		And I should see "BF"
		When I go to the list of game

	Scenario: Edit Game
		Given I have games name Call of Duty, Battlefield 3, Medal of Honor
		When I go to the list of game
		And I follow "edit_2"
		And I fill in "Name" with "Battlefield 4"
		And I select "October 26, 2008" as the "Release date" date
		And I fill in "Character" with "Steve Campo"
		And I press "Update Game"
		Then I should see "Game was successfully updated."
		When I follow "Back"
		Then I should see "Battlefield 4"
