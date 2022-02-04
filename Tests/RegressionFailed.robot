*** Settings ***
Documentation    This Scenario will verify the Add City functionality
Resource        Resources/Common.robot
Resource        Resources/AddCountry_Keyword.robot
Resource        Resources/AddCity_Keyword.robot
Resource        Resources/LoginPage_Keyword.robot
Resource        Resources/AddGeography_Keyword.robot
Resource        Resources/AddUser_Keyword.robot
Resource        Resources/RegressionFailed_Keyword.robot
Test Setup      Begin Web Test
Test Teardown       End Web Test

*** Test Cases ***

User Not able to login with invalid data
    [Documentation]    This Scenario will Successful Login functionality
    [Tags]    Smoke
    RegressionFailed_Keyword.Launching the targeted URL
    RegressionFailed_Keyword.Enter the Invalid credentials
    capture page screenshot


User Not Able to Add the City with invalid data
    [Documentation]    This Scenario will verify the Add City functionality
    [Tags]    Smoke
    AddCity_Keyword.Launching the targeted URL
    LoginPage_Keyword.Enter the valid credentials
    RegressionFailed_Keyword.Visit City Form to fill invalid data
    AddCity_Keyword.Visit CityName Form
    AddCity_Keyword.Verify If City Got Added
    capture page screenshot

User Able to Add the Country
    [Documentation]    This Scenario will verify the Add Country functionality
    [Tags]    Smoke
    AddCountry_Keyword.Launching the targeted URL
    RegressionFailed_Keyword.Enter the Invalid credentials
    AddCountry_Keyword.Visit Country Form
    AddCountry_Keyword.Add Country Name
    capture page screenshot

User Able to Add the Geography
    [Documentation]    This Scenario will verify the Add Geography functionality
    [Tags]    Smoke
    AddGeography_Keyword.Launching the targeted URL
    RegressionFailed_Keyword.Enter the Invalid credentials
    AddGeography_Keyword.Visit Geography Form
    capture page screenshot

User Able to Add the User
    [Documentation]    This Scenario will verify the Add User functionality
    [Tags]    Smoke
    AddUser_Keyword.Launching the targeted URL
    LoginPage_Keyword.Enter the valid credentials
    RegressionFailed_Keyword.Visit User Form with invalid data
    capture page screenshot

