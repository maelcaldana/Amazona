*** Settings ***
Documentation  This suite tests the behavior of Amazon.com
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
${SEARCH_TERM} =  Bioshock books
${USER_NAME} =  username@bol.com

*** Test Cases ***
Logged out user should be able to search for products
    Amazon.Search For Products

Logged out user should be able to view a product
    Amazon.Search For Products
    Amazon.Select Product From Search Results

Logged out user should be able to add product do cart
    Amazon.Search For Products
    Amazon.Select Product From Search Results
    Amazon.Add Product To The Cart

User must sign in to check out
    Amazon.Search For Products
    Amazon.Select Product From Search Results
    Amazon.Add Product To The Cart
    Amazon.Begin Checkout