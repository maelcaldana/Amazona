*** Settings ***
Library  Selenium2Library

*** Keywords ***
Search For Products
    Go To  http://www.amazon.com
    Wait Until Page Contains  Your Amazon.com
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains  results for "Ferrari 458"

Select Product From Search Results
    Click Link  css=#result_0 a.s-access-detail-page
    Wait Until Page Contains  Back to search results

Add Product To The Cart
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Added to Cart
    Click Link  css=#hlb-ptc-btn-native
    Sleep  2s

Begin Checkout
    Page Should Contain Element  //h1[@class='a-spacing-small']
    Element Should Be Visible  //h1[@class='a-spacing-small']
    Wait Until Page Contains  Sign in
    Input Text  id=ap_email  rauldelicia@bol.com
    Sleep  1s
    Click Element  id=continue
