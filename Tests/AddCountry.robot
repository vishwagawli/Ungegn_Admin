*** Settings ***
Documentation    This Scenario will verify the Add Country functionality
Resource        Resources/Common.robot
Resource        Resources/AddCountry_Keyword.robot
Resource        Resources/LoginPage_Keyword.robot
Test Setup      Begin Web Test
Test Teardown       End Web Test

*** Test Cases ***
User Able to Add the Country
    [Documentation]    This Scenario will verify the Add Country functionality
    [Tags]    Smoke
    AddCountry_Keyword.Launching the targeted URL
    LoginPage_Keyword.Enter the valid credentials
    AddCountry_Keyword.Visit Country Form
    AddCountry_Keyword.Add Country Name
    capture page screenshot

#User Able to Update the Country
 #   [Documentation]    This Scenario will verify the Add Country functionality
  #  [Tags]    Smoke
   # AddCountry_Keyword.Launching the targeted URL
    #LoginPage_Keyword.Enter the valid credentials
    #AddCountry_Keyword.Visit Country Form to Update
    #capture page screenshot

#User Able to Delete the Country
 #   [Documentation]    This Scenario will verify the Add Country functionality
  #  [Tags]    Smoke
  #  AddCountry_Keyword.Launching the targeted URL
   # LoginPage_Keyword.Enter the valid credentials
    #AddCountry_Keyword.Visit Country Form to Delete
    #capture page screenshot