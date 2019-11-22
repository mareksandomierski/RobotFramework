*** Settings ***
Documentation    This is some basic info about the whole suite
Resource    ../Resources/Common.robot
Resource    ../Resources/Amazon.Web.Gui.robot
Suite Setup    Insert Testing Data
Test Setup    Begin Web Test
Test Teardown    End Web Test
Suite Teardown    Cleanup Testing Data
# robot -d results amazon.robot
        

*** Variables ***


*** Test Cases ***
User must sign in to check out
   [Documentation]    This is some basic info about the test
   [Tags]    Smoke
   Amazon.Web.Gui.Search for Products
   Amazon.Web.Gui.Select Product from Search Results
   Amazon.Web.Gui.Add Product to Cart   
   Amazon.Web.Gui.Begin Checkout