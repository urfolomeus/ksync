Feature: user starts kitchen-sync

	As a user
	I want to open kitchen-sync
	So that I can use the application
	
	Scenario: start kitchen-sync with valid directories
		Given kitchen-sync is not yet started
		When I start kitchen sync with valid directories
		Then I should see "Welcome to Kitchen Sync! Type help to view the command list."
		And I should see "Enter command:"
		