*** Settings ***
Library    SeleniumLibrary



*** Keywords ***
Load
     #go to   https://unsddb.southeastasia.cloudapp.azure.com:800/geonames
     go to    https://localhost:44325/
    maximize browser window
    sleep    5s

