*** Settings ***
Documentation  This test will verify if the given emails have been compromised.

Resource    ../Resources/PwnedApp.robot
Resource    ../Resources/Common.robot

Test Setup  Begin Web Test
Test Teardown   End Web Test

# Copy/paste one of the below commands to Terminal to execute:
# robot -d Results -N "Full Regression" Tests
# robot -d Results Tests/PwnageTest.robot
# robot -d Results -i Smoke Tests/PwnageTest.robot

*** Variables ***
${START_URL} =  https://haveibeenpwned.com/
${BROWSER} =  gc
${SEARCH_PWNED_EMAIL} =  test@something.com
${SEARCH_NOT_PWNED_EMAIL} =  qwerty@elsewhere.com


*** Test Cases ***
First scenario: User should be able to check if email is in a data breach
    [Documentation]  User checks that website shows pwned-warning
    [Tags]  Current
    PwnedApp.Check if email in scenario one has been pwned

Second scenario: User should be able to check if email is not in a data breach
    [Documentation]  User checks that website does not show pwned-warning
    [Tags]  Smoke
    PwnedApp.Check if email in scenario two has not been pwned

