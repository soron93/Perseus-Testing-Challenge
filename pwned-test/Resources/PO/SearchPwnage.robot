*** Settings ***
Documentation  Pwnage search criteria, search field and search button
Library  SeleniumLibrary

*** Variables ***
${SEARCH_FIELD} =  id=Account
${PWNED_BUTTON} =  id=searchPwnage

*** Keywords ***
Testing The Email In The First Scenario
    Enter First Scenario Search Email

Enter First Scenario Search Email
    Input Text  ${SEARCH_FIELD}  ${SEARCH_PWNED_EMAIL}

Click Pwnage Button
    [Documentation]  Clicks on the pwnage search button
    Click Button    ${PWNED_BUTTON}

Testing The Email In The Second Scenario
    Enter Second Scenario Search Email

Enter Second Scenario Search Email
    Input Text  ${SEARCH_FIELD}  ${SEARCH_NOT_PWNED_EMAIL}



