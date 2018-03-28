*** Settings ***
Documentation  This suite tests the behavior of Amazon.com
Resource  ../Resources/AmazonApp.robot
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
    AmazonApp.Search For Products

Logged out user should be able to view a product
    AmazonApp.Search For Products
    AmazonApp.Select Product From Search Results

Logged out user should be able to add product do cart
    AmazonApp.Search For Products
    AmazonApp.Select Product From Search Results
    AmazonApp.Add Product To The Cart

User must sign in to check out
    AmazonApp.Search For Products
    AmazonApp.Select Product From Search Results
    AmazonApp.Add Product To The Cart
    AmazonApp.Begin Checkout