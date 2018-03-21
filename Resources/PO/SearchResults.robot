*** Settings ***
Documentation  Testing the search results
Library  Selenium2Library


*** Variables ***
${FIRST_PRODUCT} =  xpath=//*[@id="result_0"]/div/div/div/div[2]/div[1]/div[1]/a

*** Keywords ***
Verify Search Completed
    Wait Until Page Contains  results for "${SEARCH_TERM}"

Click Product Link
    [Documentation]  Clicks on the first product in the search results list
    Wait Until Element Is Visible  ${FIRST_PRODUCT}
    Click Element  ${FIRST_PRODUCT}