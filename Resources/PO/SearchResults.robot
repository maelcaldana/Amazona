*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify Search Completed
    Wait Until Page Contains  results for "${SEARCH_TERM}"

Click Product Link
    [Documentation]  Clicks on the first product in the search results list
    Sleep  2s
    Click Link  css=#result_0 a.s-access-detail-page