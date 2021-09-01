*** Settings ***
Documentation

*** Keywords ***
Verify First Scenario Search Completed
    Wait Until Page Contains    Oh no — pwned!

Verify Second Scenario Search Completed
    Wait Until Page Contains    Good news — no pwnage found!


