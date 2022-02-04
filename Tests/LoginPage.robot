*** Settings ***
Documentation    This Scenario will Successful Login functionality
Resource        Resources/LoginPage_Keyword.robot
Resource        Resources/Common.robot

Test Setup      Begin Web Test
Test Teardown       End Web Test


*** Test Cases ***
User must launch website to search
    [Documentation]    This Scenario will Successful Login functionality
    [Tags]    Smoke
    LoginPage_Keyword.Launching the targeted URL
    LoginPage_Keyword.Enter the valid credentials
    capture page screenshot
