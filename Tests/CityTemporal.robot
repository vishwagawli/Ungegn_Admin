*** Settings ***
Documentation    This Scenario will verify the Temporal Dimension functionality
Resource        Resources/Common.robot
Resource        Resources/CityTemporal_Keyword.robot
Resource        Resources/LoginPage_Keyword.robot
Test Setup      Begin Web Test
#Test Teardown       End Web Test

*** Test Cases ***
#User Able to Perform Temporal Dimension Using City for City to Country
 #   [Documentation]    This Scenario will verify Temporal Dimension Using Country for Country to Country
  #  [Tags]    Smoke
   # CityTemporal_Keyword.Launching the targeted URL
    #LoginPage_Keyword.Enter the valid credentials
    #CityTemporal_Keyword.Visit Temporal Division Form For City
    #CityTemporal_Keyword.Select Division Type
    #CityTemporal_Keyword.Fill The City Details Form
    #CityTemporal_Keyword.First Country Details
    #CityTemporal_Keyword.Second Country Details
    #CityTemporal_Keyword.Validate If Division Got Added
    #capture page screenshot

#User Able to Perform Temporal Dimension Using City for City to City
 #   [Documentation]    This Scenario will verify Temporal Dimension Using Country for Country to City
  #  [Tags]    Smoke
   # CityTemporal_Keyword.Launching the targeted URL
    #LoginPage_Keyword.Enter the valid credentials
    #CityTemporal_Keyword.Visit Temporal Division Form For City
    #CityTemporal_Keyword.Select Division Type
    #CityTemporal_Keyword.Fill The City Details Form
    #CityTemporal_Keyword.First City Details
    #CityTemporal_Keyword.Second City Details
    #CityTemporal_Keyword.Validate division City for City to City
    #capture page screenshot


User Able to Perform Temporal Dimension Using City for City to Geography
    [Documentation]    This Scenario will verify Temporal Dimension Using Country for City to Geography
    [Tags]    Smoke
    CityTemporal_Keyword.Launching the targeted URL
    LoginPage_Keyword.Enter the valid credentials
    CityTemporal_Keyword.Visit Temporal Division Form For City
    CityTemporal_Keyword.Select Division Type
    CityTemporal_Keyword.Fill The City Details Form
    CityTemporal_Keyword.First Geography Details
    CityTemporal_Keyword.Second Geography Details
    CityTemporal_Keyword.Validate division City for City to City
    capture page screenshot


