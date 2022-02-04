*** Settings ***
Documentation    This Scenario will verify the Add City functionality
Resource        Resources/Common.robot
Resource        Resources/AddCountry_Keyword.robot
Resource        Resources/AddCity_Keyword.robot
Resource        Resources/LoginPage_Keyword.robot
Resource        Resources/AddGeography_Keyword.robot
Resource        Resources/AddUser_Keyword.robot
Test Setup      Begin Web Test
Test Teardown       End Web Test

*** Test Cases ***
User Able to Add the City
    [Documentation]    This Scenario will verify the Add City functionality
    [Tags]    Smoke
    AddCity_Keyword.Launching the targeted URL
    LoginPage_Keyword.Enter the valid credentials
    AddCity_Keyword.Visit City Form
    AddCity_Keyword.Visit CityName Form
    AddCity_Keyword.Verify If City Got Added
    capture page screenshot

User Able to Add the Country
    [Documentation]    This Scenario will verify the Add Country functionality
    [Tags]    Smoke
    AddCountry_Keyword.Launching the targeted URL
    LoginPage_Keyword.Enter the valid credentials
    AddCountry_Keyword.Visit Country Form
    AddCountry_Keyword.Add Country Name
    capture page screenshot

User Able to Add the Geography
    [Documentation]    This Scenario will verify the Add Geography functionality
    [Tags]    Smoke
    AddGeography_Keyword.Launching the targeted URL
    LoginPage_Keyword.Enter the valid credentials
    AddGeography_Keyword.Visit Geography Form
    capture page screenshot

User Able to Add the User
    [Documentation]    This Scenario will verify the Add User functionality
    [Tags]    Smoke
    AddUser_Keyword.Launching the targeted URL
    LoginPage_Keyword.Enter the valid credentials
    AddUser_Keyword.Visit User Form
    capture page screenshot

