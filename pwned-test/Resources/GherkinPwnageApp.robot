*** Settings ***
Documentation  Custom keywords for the Gherkin Syntax utilizing the page object or the PO directory files.

Library  SeleniumLibrary
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/SearchPwnage.robot
Resource  ../Resources/PO/SearchResults.robot

*** Keywords ***
the user checks if email one has been pwned
    LandingPage.Load
    LandingPage.Verify Page Loaded

user enters first scenario search criteria
    SearchPwnage.Testing The Email In The First Scenario

the user clicks on pwned button
    SearchPwnage.Click Pwnage Button

the first email is verified to be in a data breach
    SearchResults.Verify First Scenario Search Completed

the user checks if email two has not been pwned
    LandingPage.Load
    LandingPage.Verify Page Loaded

user enters second scenario search criteria
    SearchPwnage.Testing The Email In The Second Scenario

the second email is verified not to be in a data breach
    SearchResults.Verify Second Scenario Search Completed
