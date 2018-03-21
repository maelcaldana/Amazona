*** Settings ***
Library  Selenium2Library
Documentation  Testing the Sing in page
Library  Selenium2Library

*** Variables ***
${SINGIN_MAIN_HEADING}=  //h1[@class='a-spacing-small']
${CONTINUE_BUTTON} =  id=continue


*** Keywords ***
Verify Page Loaded
    Wait Until Element Is Visible  ${SINGIN_MAIN_HEADING}
    Element Should Be Visible  ${SINGIN_MAIN_HEADING}


Try to Sing In
    Input Text  id=ap_email  ${USER_NAME}
    Wait Until Element Is Visible  ${CONTINUE_BUTTON}
    Click Element  ${CONTINUE_BUTTON}


