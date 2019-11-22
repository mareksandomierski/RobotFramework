*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
    
Search for Products
   Go To    http://www.amazon.com         
   Wait Until Page Contains    Your Amazon.com    
   Input Text    id=twotabsearchtextbox    Ferrari 458    
   Click Button    xpath=//*[@id="nav-search"]/form/div[2]/div/input
   Wait Until Page Contains    results for "Ferrari 458"
    
Select Product from Search Results
   Click Image    https://m.media-amazon.com/images/I/61kRc4hwinL._AC_UL320_ML3_.jpg
   Wait Until Page Contains    Back to results
    
Add Product to Cart
   Click Button    id=add-to-cart-button-ubb   
   Wait Until Page Contains    Added to Cart 
    
Begin Checkout
   Click Link    id=hlb-ptc-btn-native   
   Wait Until Page Contains    Sign-In     
   Page Should Contain Element    continue
