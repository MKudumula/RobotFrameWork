*** Settings ***
Library  SeleniumLibrary
Variables  ../UITests/PageLocators.py
Resource  ../UITests/Keyword.robot


*** Variables ***
${URL}      https://www.amazon.co.uk/
${BROWSER}  chrome

*** Keywords ***

*** Test Cases ***
Google amazon home page
    Given I navigate to amazon site     ${URL}   ${BROWSER}
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


