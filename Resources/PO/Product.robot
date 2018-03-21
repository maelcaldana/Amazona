*** Settings ***
Documentation  Testing the product page
Library  Selenium2Library

*** Variables ***
${ADD_TO_CART} =  id=add-to-cart-button

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  Back to search results

Add to Cart
    Wait Until Element Is Visible  ${ADD_TO_CART}
    Click Button  ${ADD_TO_CART}