*** Settings ***
Library  Selenium2Library

*** Keywords ***
Begin Web Test
    Log  aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
    Open Browser  about:blank  edge

End Test
    Sleep  5s
    Close Browser