
# Page Locators
SearchURL = "https://www.amazon.co.uk/"
AcceptCookie = "id:sp-cc-accept"

AssertText = "xpath:/html/head/title"
SearchText = "css:.nav-input.nav-progressive-attribute"
INPUT_SEARCH ="the secret book"
SearchSubmitButton = "id:nav-search-submit-button"
searchResult  = "//*[@id='search']/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/span/div/div/span"
expectedSearchResult = "RESULTS"

clickOnItem = "xpath://*[@id='search']/div[1]/div[1]/div/span[3]/div[2]/div[3]/div/div/div/div/div/div[2]/div/div/div[1]/h2/a/span"
AddtoCart = "xpath://*[@id='submit.add-to-cart']"
CartItems = "css:.a-size-medium-plus.a-color-base.sw-atc-text.a-text-bold"
expectedItems = "Added to Basket"

goToBasket = "xpath://*[@id='sw-gtc']/span/a"
AddQuantity = "css:.a-button.a-button-dropdown.quantity"
Dropdown = "css:.a-icon.a-icon-dropdown"
SelectQuantity = "css:.a-button-text.a-declarative"
ClickCount = "id:quantity_4"
CartTotal = "css:.a-dropdown-prompt"
expectedTotal = "4"

