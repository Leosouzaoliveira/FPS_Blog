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