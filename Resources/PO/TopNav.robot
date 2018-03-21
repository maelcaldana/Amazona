*** Settings ***
Documentation  Amazon top navigation
Library  Selenium2Library

*** Variables ***
${TOPNAV_SEARCH_BAR} =  id=twotabsearchtextbox
${SEARCH_BOTTON} =  xpath=//*[@id="nav-search"]/form/div[2]/div/input

*** Keywords ***
Search for Products
    Enter Search Term
    Submit Search

Enter Search Term
    Input Text  ${TOPNAV_SEARCH_BAR}  ${SEARCH_TERM}


Submit Search
    Click Button  ${SEARCH_BOTTON}