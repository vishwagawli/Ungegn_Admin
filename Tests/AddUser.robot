*** Settings ***
Documentation    This Scenario will verify the Add User functionality
Resource        Resources/Common.robot
Resource        Resources/AddUser_Keyword.robot
Resource        Resources/LoginPage_Keyword.robot
Test Setup      Begin Web Test
Test Teardown       End Web Test

*** Test Cases ***
User Able to Add the User
    [Documentation]    This Scenario will verify the Add User functionality
    [Tags]    Smoke
    AddUser_Keyword.Launching the targeted URL
    LoginPage_Keyword.Enter the valid credentials
    AddUser_Keyword.Visit User Form
    capture page screenshot