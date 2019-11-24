*** Settings ***
Library    SeleniumLibrary    

*** Keywords ***
Verify Search Completed
    Wait Until Page Contains  results for "${SEARCH_TERM}"

Click Product Link
    [Documentation]  Clicks on the product's image in the search results list
    Click Image    https://m.media-amazon.com/images/I/61kRc4hwinL._AC_UL320_ML3_.jpg