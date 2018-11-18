Feature: Verify home page
As a user
I should be able to navigate to homepage 
So that I can see what's on offer 

Background:
Given I am on Amazon homepage


Scenario: Verify homepage titile 
Then I should see "Amazon.co.uk: Low Prices in Electronics, Books, Sports Equipment & more" title


Scenario: Verify homepage Url
Then the page url should be "https://www.amazon.co.uk/"


Scenario: Verify links in the header 
When I click on "Today's Deals" link
Then I should see "Amazon UK Deals - Discover Our Daily Deals" tittle 


Scenario Outline: Verify links on the header
When I click on "<linkText>" link
Then I should seee "<pageTitle>" title
Examples:
|linkText | pageTitle |
|Today's Deals | Amazon UK Deals - Discover Our Daily Deals |


Scenario: Verify the number of options in search dropdown
Then I should see 46 options availble in search dropdown 
When I select "Clothing" from search dropdown

Scenario: Verify the options that are avaialble in search dropdown
Then I should see "Clothing" option in the search dropdown
And I should  see "Books" option in the search dropdown
And I should  see "Beauty" option in the search dropdown
And I should  see "Watches" option in the search dropdown

Scenario: Search for T-shirts
When I select "Clothing" from search dropdown
And I type "T-shirt" in search field
And I click on search button
Then I should see search results for "T-shirt"

@skip
Scenario: Selemiun Explicit wait statement
Given I wait for  search field to be present 
