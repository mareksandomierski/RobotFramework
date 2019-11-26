*** Settings ***
Documentation    This is some basic info about the whole suite
Resource    ../Resources/Common.robot    # for Setup & Teardown
Resource    ../Resources/Amazon.Web.Gui.robot    # for lower level keywords in test cases
# Suite Setup    Insert Testing Data
Test Setup    Begin Web Test
Test Teardown    End Web Test
# Suite Teardown    Cleanup Testing Data
# robot -d results tests
# robot -d results --timestampoutputs tests
# robot -d results --reporttitle "My Cool Report" --logtitle "My Cool Log" tests
# robot -d results -L debug tests
        

*** Variables ***
${BROWSER} =    chrome
${START_URL} =    http://www.amazon.com
${SEARCH_TERM} =    Ferrari 458
${LOGIN_EMAIL} =    admin@robotrameworktutorial.com
${LOGIN_PASSWORD} =    myPassword1

*** Test Cases ***
Should be able to login
    Amazon.Web.Gui.Login    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}

Logged out user can search for products
    [Tags]  Smoke
    Amazon.Web.Gui.Search for Products

Logged out user can view a product
    [Tags]  Smoke
    Amazon.Web.Gui.Search for Products
    Amazon.Web.Gui.Select Product from Search Results

Logged out user can add product to cart
    [Tags]  Smoke
    Amazon.Web.Gui.Search for Products
    Amazon.Web.Gui.Select Product from Search Results
    Amazon.Web.Gui.Add Product to Cart

Logged out user must sign in to check out
    [Tags]  Smoke
    Amazon.Web.Gui.Search for Products
    Amazon.Web.Gui.Select Product from Search Results
    Amazon.Web.Gui.Add Product to Cart
    Amazon.Web.Gui.Begin Checkout

User must sign in to check out
   [Documentation]    This is some basic info about the test
   [Tags]    Flow
   Amazon.Web.Gui.Search for Products
   Amazon.Web.Gui.Select Product from Search Results
   Amazon.Web.Gui.Add Product to Cart   
   Amazon.Web.Gui.Begin Checkout