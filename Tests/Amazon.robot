*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../Resources/Amazon.robot
Resource  ../Resources/Common.robot


# Suite runs before and after all Tests Cases and Test runs before each Test Case
Suite Setup  Common.The Tests Will Begin
Test Setup  Common.Begin Web Test
Suite Teardown  Common.The Tests Will End
Test Teardown  Common.End Test

*** Variables ***
${BROWSER} =  edge
${START_URL} =  https:://www.amazon.com
${SEARCH_TERM} =  Bioshock
${USER_NAME} =  username@bol.com

*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    # use -i <Tags> to run just on Test Case
    [Tags]  Smoke

    Amazon.Search For Products
    Amazon.Select Product From Search Results
    Amazon.Add Product To The Cart
    Amazon.Begin Checkout

