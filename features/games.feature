Feature: Create Game
		In order to create game
		As an User
		I want to create and list games

	Scenario: Games List
		Given I login as leo@leo.com with 123456
		Given I have games name Call of Duty, Battlefield
		When I go to the list of game
		Then I should see "Call of Duty"
		And I should see "Battlefield"