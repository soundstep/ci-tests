Feature: Find the Google Store

Scenario: Search for the website
	Given I am on the Google homepage
	Then I will search for "google play"
	Then I should see "Google Play"
	Then I will click the Games link
