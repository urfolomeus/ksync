Feature: user starts kitchen-sync

	As a user
	I want to open kitchen-sync
	So that I can use the features
	
	Scenario: start kitchen-sync
		Given kitchen-sync is not yet started
		When I start kitchen sync
		Then I should see "Welcome to Kitchen Sync! Type help to view the command list."
		And I should see "Enter command:"
		
	Scenario: ask for help
		Given kitchen-sync is started
		When I enter command help
		Then I should see "Command List"
		And I should see "Enter command:"
