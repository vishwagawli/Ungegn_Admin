*** Settings ***
Documentation    This Scenario will verify the Temporal Dimension functionality
Resource        Resources/Common.robot
Resource        Resources/DeleteTemporal_Keyword.robot
Resource        Resources/LoginPage_Keyword.robot
Test Setup      Begin Web Test
#Test Teardown       End Web Test

*** Test Cases ***
User Able to Perform delete operation for Temporal Dimension Using Country
    [Documentation]    This Scenario will verify delete operation for Temporal Dimension Using Country
    [Tags]    Smoke
    DeleteTemporal_Keyword.Launching the targeted URL
    LoginPage_Keyword.Enter the valid credentials
    DeleteTemporal_Keyword.Visit Temporal Division Form For Country to perform delete operation
    capture page screenshot

User Able to Perform delete operation for Temporal Dimension Using Country
    [Documentation]    This Scenario will verify delete operation for Temporal Dimension Using Country
    [Tags]    Smoke
    DeleteTemporal_Keyword.Launching the targeted URL
    LoginPage_Keyword.Enter the valid credentials
    DeleteTemporal_Keyword.Visit Temporal Division Form For City to perform delete operation
    capture page screenshot



