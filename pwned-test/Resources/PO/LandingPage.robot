*** Settings ***
Documentation   Keywords here are specific to haveibeenpwned.com
Library  SeleniumLibrary


*** Keywords ***
Load
    Go To   ${START_URL}

Verify Page Loaded
    Wait Until Page Contains    Check if your email or phone is in a data breach