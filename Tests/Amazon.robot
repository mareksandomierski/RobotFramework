*** Settings ***
Documentation    This is some basic info about the whole suite
Library    SeleniumLibrary
        
*** Variables ***



*** Test Cases ***
User must sign in to check out
   [Documentation]    This is some basic info about the test
   [Tags]    Smoke
   #Precondition
   Open Browser    http://www.amazon.com    chrome   options=add_experimental_option("useAutomationExtension",False)
   Wait Until Page Contains    Your Amazon.com    
   Input Text    id=twotabsearchtextbox    Ferrari 458    
   Click Button    xpath=//*[@id="nav-search"]/form/div[2]/div/input
   Wait Until Page Contains    results for "Ferrari 458"   
   Click Link    xpath: //*[contains(text(),'Maisto Ferrari 458 Speciale 1:18 Special Edition')]    
   Wait Until Page Contains    Back to search results
   Click Button    id=add-to-cart-button    
   Wait Until Page Contains    1 item added to Cart    
   #Test
   Click Link    Proceed to Checkout    
   Page Should Contain Element    ap-signin1a_pagelet_title    
   Element Text Should Be    ap_signian1a_pagelet_title    Sign In     
   #Postcondition   
   Close Browser
       
*** Keywords ***
