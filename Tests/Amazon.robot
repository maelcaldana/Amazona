*** Settings ***
Documentation  This is some basic info about the whole suite
Library  Selenium2Library

# Copy/paste the line below into Terminal to execute:
# pybot -d results tests/amazon.robot

*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser  http://www.amazon.com  edge
    Wait Until Page Contains  Your Amazon.com
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains  results for "Ferrari 458"
    Click Link  css=#result_0 a.s-access-detail-page
    Wait Until Page Contains  Back to search results
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Added to Cart
    Click Link  css=#hlb-ptc-btn-native
    Sleep  2s
    Page Should Contain Element  //h1[@class='a-spacing-small']
    Element Should Be Visible  //h1[@class='a-spacing-small']
    Wait Until Page Contains  Sign in
    Input Text  id=ap_email  rauldelicia@buceta.com
    Sleep  1s
    Click Element  id=continue
    Sleep  5s
    Close Browser

*** Keywords ***