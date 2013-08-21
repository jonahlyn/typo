Feature: Merge Articles
  As an admin user
  When authors write more than one article on the same topic
  I want to be able to merge two articles together

  Background: The blog is set up
  	Given the blog is set up

  Scenario: I should see both articles on the manage articles page
    Given I am logged into the admin panel as "admin"
    When I go to the manage articles page
    Then I should see "An Article About Something"
    And I should see "An Article About the Same Thing"
    
  Scenario: When I edit an article, I should see the Merge Articles form
    Given I am logged into the admin panel as "admin"
    When I go to the manage articles page
  	And I follow "An Article About Something"
  	Then I should see "Merge Articles"
  	And I should see an element "#merge_with"

  Scenario: If I am not an admin, I should not see the Merge Articles form
  	Given I am logged into the admin panel as "joe"
  	When I go to the manage articles page
    And I follow "An Article About Something"
    Then I should not see "Merge Articles"

  Scenario: I should not see the Merge Articles form when I create a new article
    Given I am logged into the admin panel as "admin"
    When I go to the manage articles page
    And I follow "New Article"
    Then I should not see "Merge Articles"



