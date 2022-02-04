*** Settings ***
Library    SeleniumLibrary



*** Keywords ***
Load
     go to   https://unsddb.southeastasia.cloudapp.azure.com:800/GeoNamesDashboard
    maximize browser window
    sleep    5s

