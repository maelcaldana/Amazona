*** Settings ***
Library  Selenium2Library
Documentation  Starts and stops the tests

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}

End Test
    Close Browser

The Tests Will Begin
    Log  I am starting the tests...

The Tests Will End
    Log  I am finishing the tests...