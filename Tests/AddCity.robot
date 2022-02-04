*** Settings ***
Documentation    This Scenario will verify the Add City functionality
Resource        Resources/Common.robot
Resource        Resources/AddCity_Keyword.robot
Resource        Resources/LoginPage_Keyword.robot
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

#User Able to Update the City
 #   [Documentation]    This Scenario will verify the Update City functionality
  #  [Tags]    Smoke
   # AddCity_Keyword.Launching the targeted URL
    #LoginPage_Keyword.Enter the valid credentials
    #AddCity_Keyword.Visit City Form to update
    #AddCity_Keyword.Visit Add Name Form
    #AddCity_Keyword.Verify If Updated City Got Added
    #capture page screenshot

User Able to Delete the City
    [Documentation]    This Scenario will verify the Update City functionality
    [Tags]    Smoke
    AddCity_Keyword.Launching the targeted URL
    LoginPage_Keyword.Enter the valid credentials
    AddCity_Keyword.Visit City Form to Delete