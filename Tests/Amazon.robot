*** Settings ***
Documentation    This is some basic info about the whole suite
Resource    ../Resources/Common.robot
Resource    ../Resources/Amazon.Web.Gui.robot
# robot -d results amazon.robot
        

*** Variables ***


*** Test Cases ***
User must sign in to check out
   [Documentation]    This is some basic info about the test
   [Tags]    Smoke
   Common.Begin Web Test
   Amazon.Web.Gui.Search for Products
   Amazon.Web.Gui.Select Product from Search Results
   Amazon.Web.Gui.Add Product to Cart   
   Amazon.Web.Gui.Begin Checkout   
   Common.End Web Test