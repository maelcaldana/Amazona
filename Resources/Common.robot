*** Settings ***
Library  Selenium2Library

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  edge

End Test
    Sleep  5s
    Close Browser

The Tests Will Begin
    Log  I am starting the tests...



The Tests Will End
    Log  I am finishing the tests...