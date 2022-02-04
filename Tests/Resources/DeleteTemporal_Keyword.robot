*** Settings ***
Library    SeleniumLibrary
Resource    LoadURL.robot


*** Variables ***
${Division_Type}    GEOG
${DateYearFrom}     07-01-1991
${DateYearTO}       07-01-2000
${DateVisibleFrom}      07-01-1991
${DateVisibleTo}        07-01-2000
${City1}        3491
${City2}        3492
${Geog1}        19
${Geog2}        20

*** Keywords ***

Launching the targeted URL
    LoadURL.Load


Visit Temporal Division Form For Country to perform delete operation
    click button    id=sidebarCollapse
    click link    xpath=//*[@href='#divisionSubmenu']
    sleep    1s
    click link    xpath=//*[@href='/geonames/CountriesDivision/Index']
    wait until element is visible    xpath=//*[@class='btn btn-primary btn-sm']
    click element    xpath=//*[@href="/geonames/CountriesDivision/Delete/999"]
    sleep    2s
    click button    xpath=//*[@class="btn btn-danger"]

Visit Temporal Division Form For City to perform delete operation
    click button    id=sidebarCollapse
    click link    xpath=//*[@href='#divisionSubmenu']
    sleep    1s
    click link    xpath=//*[@href='/geonames/CountriesDivision/Index']
    wait until element is visible    xpath=//*[@class='btn btn-primary btn-sm']
    click element    xpath=//*[@href="/geonames/CitiesDivision/Delete/3501"]
    sleep    2s
    click button    xpath=//*[@class="btn btn-danger"]

Visit Temporal Division Form For Geography to perform delete operation
    click button    id=sidebarCollapse
    click link    xpath=//*[@href='#divisionSubmenu']
    sleep    1s
    click link    xpath=//*[@href='/geonames/GeographiesDivision/Index']
    wait until element is visible    xpath=//*[@class='btn btn-primary btn-sm']
    click element    xpath=//*[@href="/geonames/GeographiesDivision/Delete/20"]
    sleep    2s
    click button    xpath=//*[@class="btn btn-danger"]

