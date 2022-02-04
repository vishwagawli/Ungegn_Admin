*** Settings ***
Documentation    This Scenario will verify the search functionality
Resource        Resources/Common.robot
Resource        Resources/SearchCountry_Keyword.robot
Test Setup      Begin Web Test
Test Teardown       End Web Test

*** Test Cases ***
User must launch website to search
    [Documentation]    This Scenario will verify the search functionality
    [Tags]    Smoke
    SearchCountry_Keyword.Launching the targeted URL
    SearchCountry_Keyword.Begin Search for country
    SearchCountry_Keyword.Validate the words
    capture page screenshot



