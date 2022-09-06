

#   Acceptance Criteria
````
Google amazon home page
    Given I navigate to amazon site 
    Then I verify correct page has loaded
search item
    Given I type item in search bar
    Then relevant result is shown
add item to cart
    When I add item to shoppping basket
    Then I see item added to basket
adding same item to cart
    Given I click on go to basket
    And I add quantity of the item in basket
    Then I see shopping basket contains expected content
````
#   How to run Test
````
Run this command from project root
   
$robot Testcases.robot 
````
