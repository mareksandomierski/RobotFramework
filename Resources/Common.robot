*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Begin Web Test
   Open Browser    about:blank    chrome    options=add_experimental_option("useAutomationExtension",False)
   Maximize Browser Window
   
End Web Test
   Close Browser