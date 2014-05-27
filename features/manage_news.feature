Feature: Manage News
	In order to display a news website 
	Editor wants to create and edit stories
	Scenario: Home page has a new story link
		Given I am on the home page
		Then I should see "New Article"
	Scenario: Create article
		Given I am on the Home page
		Then I follow "New Article"
		And I fill in "title" with "Headline news"
		And I fill in "content" with "Great story"
		And I press "Create"
		Then I should be on the home page
		And I should see "content"