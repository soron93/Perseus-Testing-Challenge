*** Settings ***
Documentation  These are custom keywords utilizing the page object or the PO directory files.

Library  SeleniumLibrary
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/SearchPwnage.robot
Resource  ../Resources/PO/SearchResults.robot

*** Keywords ***
Check if email in scenario one has been pwned
    LandingPage.Load
    LandingPage.Verify Page Loaded
    SearchPwnage.Testing The Email In The First Scenario
    SearchPwnage.Click Pwnage Button
    SearchResults.Verify First Scenario Search Completed

Check if email in scenario two has not been pwned
    LandingPage.Load
    LandingPage.Verify Page Loaded
    SearchPwnage.Testing The Email In The Second Scenario
    SearchPwnage.Click Pwnage Button
    SearchResults.Verify Second Scenario Search Completed


