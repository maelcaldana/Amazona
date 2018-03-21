*** Settings ***
Library  Selenium2Library
Documentation  This file organize the keywords and create the main Test Cases

Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/TopNav.robot
Resource  ../Resources/PO/SearchResults.robot
Resource  ../Resources/PO/Product.robot
Resource  ../Resources/PO/Cart.robot
Resource  ../Resources/PO/SignIn.robot


*** Keywords ***
Search For Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products
    SearchResults.Verify Search Completed

Select Product From Search Results
    SearchResults.Click Product link
    Product.Verify Page Loaded

Add Product To The Cart
    Product.Add to Cart
    Cart.Verify Product Added

Begin Checkout
    Cart.Proceed to Checkout
    SignIn.Verify Page Loaded
    SignIn.Try to Sing In
