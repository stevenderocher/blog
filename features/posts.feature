Feature: Posts

  Scenario: Create a new post
	Given I have signed in with "sd@thoughtbot.com/b"
    And I am on the new post page
    When I create a post named "A new post"
    Then I should see "A new post"
	And I should see "created!"
	
  Scenario: See error message
	Given I have signed in with "sd@thoughtbot.com/b"
	And I am on the new post page
	And I press "Create"
	Then I should see "fucking write something!"
	
  Scenario: User should have to sign in before creating post
	Given I have signed in with "sd@thoughtbot.com/b"
	
  	Scenario: User signs out
      Given I am signed up and confirmed as "email@person.com/password"
      When I sign in as "email@person.com/password"
      Then I should be signed in
      And I sign out
      Then I should see "Signed out"
      And I should be signed out
      When I return next time
      Then I should be signed out
	When I go to the new post page
	Then I should see "Sign in"
	
  Scenario: Visitor should be able to see posts index
	Given I am on the posts page
	Then I should see "Posts"
	
  Scenario: Visitor can not access the index posts page
	Given I am on the new post page
	Then I should see "Sign in"
	
  Scenario: Post comments listed on post's page
	Given I have signed in with "sd@thoughtbot.com/b"
    And a post exists with a title of "title"
	And a comment for the post exists with the body of "body"
	Then I should see "title"
	And I should see "body"
	
  Scenario: Post index has RSS feed
	Given a post exists with a title of "title"
	# And has a body of "body"
	And I am on the posts page
	Then I should see "title"
	When I follow "subscribe"
	Then I should see "title"