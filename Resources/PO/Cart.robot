*** Settings ***
Documentation  Testing Cart behavior
Library  Selenium2Library

*** Variables ***
${PROCEED_CHECKOUT_BUTTON} =  id=hlb-ptc-btn-native

*** Keywords ***
Verify Product Added
    Wait Until Page Contains  Added to Cart

Proceed to Checkout
    Click Link  ${PROCEED_CHECKOUT_BUTTON}
    Wait Until Page Contains  Proceed to checkout
