*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../Resources/Amazon.robot
Resource  ../Resources/Common.robot

*** Variables ***

*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke

    Common.Begin Web Test
    Amazon.Search For Products
    Amazon.Select Product From Search Results
    Amazon.Add Product To The Cart
    Amazon.Begin Checkout
    Common.End Test

