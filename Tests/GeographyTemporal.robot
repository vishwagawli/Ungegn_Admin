*** Settings ***
Documentation    This Scenario will verify the Temporal Dimension functionality
Resource        Resources/Common.robot
Resource        Resources/GeographyTemporal_Keyword.robot
Resource        Resources/LoginPage_Keyword.robot
Test Setup      Begin Web Test
#Test Teardown       End Web Test

*** Test Cases ***
#User Able to Perform Temporal Dimension Using Geography for Geography to Country
 #   [Documentation]    This Scenario will verify Temporal Dimension Using Country for Country to Country
  #  [Tags]    Smoke
   # GeographyTemporal_Keyword.Launching the targeted URL
    #LoginPage_Keyword.Enter the valid credentials
    #GeographyTemporal_Keyword.Visit Temporal Division Form For City
    #GeographyTemporal_Keyword.Select Division Type
    #GeographyTemporal_Keyword.Fill The Geography Details Form
    #GeographyTemporal_Keyword.First Country Details
    #GeographyTemporal_Keyword.Second Country Details
    #GeographyTemporal_Keyword.Validate If Division Got Added
    #capture page screenshot

#User Able to Perform Temporal Dimension Using Geography for Geography to City
 #   [Documentation]    This Scenario will verify Temporal Dimension Using Geography for Geography to City
  #  [Tags]    Smoke
   # GeographyTemporal_Keyword.Launching the targeted URL
    #LoginPage_Keyword.Enter the valid credentials
    #GeographyTemporal_Keyword.Visit Temporal Division Form For City
    #GeographyTemporal_Keyword.Select Division Type
    #GeographyTemporal_Keyword.Fill The Geography Details Form
    #GeographyTemporal_Keyword.First City Details
    #GeographyTemporal_Keyword.Second City Details
    #GeographyTemporal_Keyword.Validate division Geography for Geography to City
    #capture page screenshot


User Able to Perform Temporal Dimension Using Geography for Geography to Geography
    [Documentation]    This Scenario will verify Temporal Dimension Using Geography for Geography to Geography
    [Tags]    Smoke
    GeographyTemporal_Keyword.Launching the targeted URL
    LoginPage_Keyword.Enter the valid credentials
    GeographyTemporal_Keyword.Visit Temporal Division Form For City
    GeographyTemporal_Keyword.Select Division Type
    GeographyTemporal_Keyword.Fill The Geography Details Form
    GeographyTemporal_Keyword.First Geography Details
    GeographyTemporal_Keyword.Second Geography Details
    GeographyTemporal_Keyword.Validate division Geography for Geography to City
    capture page screenshot


