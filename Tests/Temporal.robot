*** Settings ***
Documentation    This Scenario will verify the Temporal Dimension functionality
Resource        Resources/Common.robot
Resource        Resources/Temporal_Keyword.robot
Resource        Resources/LoginPage_Keyword.robot
Test Setup      Begin Web Test
#Test Teardown       End Web Test

*** Test Cases ***
#User Able to Perform Temporal Dimension Using Country for Country to Country
 #   [Documentation]    This Scenario will verify Temporal Dimension Using Country for Country to Country
  #  [Tags]    Smoke
   # Temporal_Keyword.Launching the targeted URL
    #LoginPage_Keyword.Enter the valid credentials
    #Temporal_Keyword.Visit Temporal Division Form For Country
    #Temporal_Keyword.Select Division Type
    #Temporal_Keyword.Fill The Country Details Form
    #Temporal_Keyword.First Country Details
    #Temporal_Keyword.Second Country Details
    #capture page screenshot

#User Able to Perform Temporal Dimension Using Country for Country to City
    #[Documentation]    This Scenario will verify Temporal Dimension Using Country for Country to City
    #[Tags]    Smoke
    #Temporal_Keyword.Launching the targeted URL
    #LoginPage_Keyword.Enter the valid credentials
    #Temporal_Keyword.Visit Temporal Division Form For Country
    #Temporal_Keyword.Select Division Type
    #Temporal_Keyword.Fill The Country Details Form
    #Temporal_Keyword.First City Details
    #Temporal_Keyword.Second City Details
    #Temporal_Keyword.Validate If Division Got Added
    #capture page screenshot


User Able to Perform Temporal Dimension Using Country for Country to Geography
    [Documentation]    This Scenario will verify Temporal Dimension Using Country for Country to Geography
    [Tags]    Smoke
    Temporal_Keyword.Launching the targeted URL
    LoginPage_Keyword.Enter the valid credentials
    Temporal_Keyword.Visit Temporal Division Form For Country
    Temporal_Keyword.Select Division Type
    Temporal_Keyword.Fill The Country Details Form
    Temporal_Keyword.First Geography Details
    Temporal_Keyword.Second Geography Details
    Temporal_Keyword.Validate If Division Got Added
    capture page screenshot


