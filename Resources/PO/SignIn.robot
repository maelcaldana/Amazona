*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify Page Loaded
    Page Should Contain Element  //h1[@class='a-spacing-small']
    Element Should Be Visible  //h1[@class='a-spacing-small'


Try to Sing In
    Wait Until Page Contains  Sign in
    Input Text  id=ap_email  rauldelicia@bol.com
    Sleep  1s
    Click Element  id=continue


