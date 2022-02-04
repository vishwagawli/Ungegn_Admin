*** Settings ***
Documentation    This Scenario will verify the Geography functionality
Resource        Resources/Common.robot
Resource        Resources/AddGeography_Keyword.robot
Resource        Resources/LoginPage_Keyword.robot
Test Setup      Begin Web Test
Test Teardown       End Web Test

*** Test Cases ***
User Able to Add the Geography
    [Documentation]    This Scenario will verify the Add Geography functionality
    [Tags]    Smoke
    AddGeography_Keyword.Launching the targeted URL
    LoginPage_Keyword.Enter the valid credentials
    AddGeography_Keyword.Visit Geography Form
    capture page screenshot

User Able to Update the Geography
    [Documentation]    This Scenario will verify the Update Geography functionality
    [Tags]    Smoke
    AddGeography_Keyword.Launching the targeted URL
    LoginPage_Keyword.Enter the valid credentials
    AddGeography_Keyword.Visit Geography Form to update
    AddGeography_Keyword.Validate Geography is Update or not
    capture page screenshot