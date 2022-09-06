*** Settings ***
Documentation  SeleniumLibrary
Variables  ../UITests/PageLocators.py

*** Variables ***


*** Keywords ***

I navigate to amazon site
    [Arguments]  ${URL}    ${BROWSER}
      open browser     ${URL}       ${BROWSER}
      maximize browser window
      click element   ${AcceptCookie}

I verify correct page has loaded
                                                      #asserting correct page has loaded
    ${currentURL}=  get Location
    log to console  ${currentURL}
    Should be equal  ${SearchURL}   ${currentURL}


I type item in search bar
    input text       ${SearchText}   ${INPUT_SEARCH}
    click element   ${SearchSubmitButton}

relevant result is shown
                                                      # .....asserting item Added to basket
    ${actualSearchResult}   get text  ${searchResult}
    log to console   ${actualSearchResult}
    Should Be Equal As Strings   ${expectedSearchResult}   ${actualSearchResult}
    Execute Javascript    window.scrollTo(0, 300)


I add item to shoppping basket
    wait until element is visible    ${clickOnItem}
    click element   ${clickOnItem}
    Execute Javascript    window.scrollTo(0, 200)
    click element  ${AddtoCart}


I see item added to basket
                                                  # .....asserting item Added to basket
      ${actualItems}   get text  ${CartItems}
      log to console   ${actualItems}
      Should Be Equal As Strings   ${expectedItems}   ${actualItems}


I click on go to basket
    click element  ${goToBasket}

I add quantity of the item in basket
    MOUSE OVER    ${AddQuantity}
    wait until element is visible    ${Dropdown}
    click element  ${SelectQuantity}

I see shopping basket contains expected content
    click element  ${ClickCount}
                                               # ...asserting total number of items in basket
    ${actualTotal}   get text  ${CartTotal}
    log to console   ${actualTotal}
    Should Be Equal As Strings   ${expectedTotal}   ${actualTotal}


