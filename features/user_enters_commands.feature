Feature: user enters commands

	As a user
	I want to enter commands
	So that I can use the features
	
	Scenario: ask for help
		Given kitchen-sync is started
		When I enter command help
		Then I should see "Command List"
		And I should see "Enter command:"
		
	Scenario: exit application
		Given kitchen-sync is started
		When I enter command exit
		Then I should see "Thank you for using KSync"
		And the application should terminate
	
	Scenario: ask for help
		Given kitchen-sync is started
		When I enter command help
		Then I should see "Command List"
		And I should see "Enter command:"
		