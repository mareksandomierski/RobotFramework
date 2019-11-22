*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Insert Testing Data
    Custom Keyword 1
    Custom Keyword 2   
    
Cleanup Testing Data
    Log    I am cleaning up the test data... 
    
Custom Keyword 1
    Log    Doing keyword 1
    
Custom Keyword 2
    Log    Doing keyword 2

Begin Web Test
   Open Browser    about:blank    chrome    options=add_experimental_option("useAutomationExtension",False)
   Maximize Browser Window
   
End Web Test
   Close Browser