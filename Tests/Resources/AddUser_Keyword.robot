*** Settings ***
Library    SeleniumLibrary
Resource    LoadURL.robot



*** Keywords ***

Launching the targeted URL
    LoadURL.Load


Visit User Form
    click button    id=sidebarCollapse
    click link    xpath=//*[@href='/geonames/Account/Index']
    sleep    3s
    click link    xpath=//*[@href='/geonames/Account/Register']
    sleep    3s
    input text    id=UserName       Testing4
    input text    id=Email      Testing4@Trigyn.com
    input password    id=Password       Testing@123
    input password    id=ConfirmPassword       Testing@123
    sleep    2s
    click button    xpath=//*[@class='btn btn-primary']
    sleep    2s

    table should contain    //*[@class='table table-bordered table-striped table-hover']        Testing

















