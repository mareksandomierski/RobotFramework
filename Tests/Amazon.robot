*** Settings ***
Documentation    This is some basic info about the whole suite
Library    SeleniumLibrary
# robot -d results tests/amazon.robot
        
*** Variables ***



*** Test Cases ***
User must sign in to check out
   [Documentation]    This is some basic info about the test
   [Tags]    Smoke
   #Precondition
   Open Browser    http://www.amazon.com    chrome   options=add_experimental_option("useAutomationExtension",False)
   Maximize Browser Window
   Wait Until Page Contains    Your Amazon.com    
   Input Text    id=twotabsearchtextbox    Ferrari 458    
   Click Button    xpath=//*[@id="nav-search"]/form/div[2]/div/input
   Wait Until Page Contains    results for "Ferrari 458"   
   Click Link    xpath=//span[@class='celwidget slot=SEARCH_RESULTS template=SEARCH_RESULTS widgetId=search-results index=3']//a[@class='a-link-normal a-text-normal']
   Wait Until Page Contains    Back to results
   Click Button    id=add-to-cart-button-ubb    
   Wait Until Page Contains    Added to Cart    
   #Test
   Click Link    id=hlb-ptc-btn-native   
   Wait Until Page Contains    Sign-In     
   Page Should Contain Element    continue       
   #Postcondition   
   Close Browser
       
*** Keywords ***
