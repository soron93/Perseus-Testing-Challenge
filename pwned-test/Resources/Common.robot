*** Settings ***
Documentation  General keywords that are specific to browser functionality
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser    about:blank  ${BROWSER}

End Web Test
    Close Browser