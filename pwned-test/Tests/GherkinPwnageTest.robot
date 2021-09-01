*** Settings ***

Documentation  Using the Gherkin syntax; This test will verify if the given emails have been compromised

Resource  ../Resources/GherkinPwnageApp.robot
Resource  ../Resources/Common.robot

Test Setup  Begin Web Test
Test Teardown   End Web Test

# Copy/paste one of the below commands to Terminal to execute:
# robot -d Results -N "Full Regression" Tests
# robot -d Results Tests/GherkinPwnageTest.robot
# robot -d Results -i Current Tests/GherkinPwnageTest.robot

*** Variables ***
${START_URL} =  https://haveibeenpwned.com/
${BROWSER} =  gc
${SEARCH_PWNED_EMAIL} =  test@something.com
${SEARCH_NOT_PWNED_EMAIL} =  qwerty@elsewhere.com

*** Test Cases ***
First scenario: User should be able to check if email is in a data breach
    [Documentation]  User checks that website shows pwned-warning using Gherkin syntax
    [Tags]  Current
    Given the user checks if email one has been pwned
    And user enters first scenario search criteria
    When the user clicks on pwned button
    Then the first email is verified to be in a data breach


Second scenario: User should be able to check if email is not in a data breach
    [Documentation]  User checks that website shows no pwned-warning using Gherkin syntax
    [Tags]  Smoke
    Given the user checks if email two has not been pwned
    And user enters second scenario search criteria
    When the user clicks on pwned button
    Then the second email is verified not to be in a data breach