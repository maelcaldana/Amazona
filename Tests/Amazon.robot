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

*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke

    Amazon.Search For Products
    Amazon.Select Product From Search Results
    Amazon.Add Product To The Cart
    Amazon.Begin Checkout

