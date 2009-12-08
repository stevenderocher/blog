  Scenario: nav
	Given I am signed up and confirmed as "email@person.com/password"
  	When I sign in as "email@person.com/password"
  	Then I should be signed in	
	And I am on the posts page
	Then I should see "new post"
	When I follow "new post"
	Then I should be on the new post page
	And I should see "home"
	When I follow "home"
	Then I should be on the posts page
	
  Scenario: nav unless current
	Given I am signed up and confirmed as "email@person.com/password"
	When I sign in as "email@person.com/password"
	Then I should be signed in	
	And I am on the posts page
	Then I should not see link "home"