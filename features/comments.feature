Scenario: Create comments model
	Given I have signed in with "sderocher@thoughtbot.com/b"
    And a post exists with a title of "title"
	When I am on the posts page
	And I follow "title"
	And I follow "comment"
	When I create a comment with body "body"
	Then I should see "body"
	
Scenario: Comments should display on post
	Given I have signed in with "sderocher@thoughtbot.com/b"
    And a post exists with a title of "title"
	When I am on the posts page
	And I follow "title"
	And I follow "comment"
	When I create a comment with body "body"
	Then I am on the posts page
	And I should see "body"
	
Scenario: Comments index
	Given I have signed in with "sderocher@thoughtbot.com/b"
    And a post exists with a title of "title"
	When I am on the posts page
	And I follow "title"
	And I follow "comment"
	And I create a comment with body "body"
	Then I am on the comments page
	Then I should see "body"