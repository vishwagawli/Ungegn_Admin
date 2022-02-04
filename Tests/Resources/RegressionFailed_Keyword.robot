*** Settings ***
Library    SeleniumLibrary
Resource    LoadURL.robot

*** Variables ***
${username}    prasad.shikhare@trigyn.com
${password}     Admin@@2
${password_Failed}     Admin@@22



*** Keywords ***

Launching the targeted URL
    LoadURL.Load

Enter the Invalid credentials
    click link    xpath=//*[@class='nav-link']
    sleep    2s
    input text    xpath=//*[@type='email']      ${username}
    input password    xpath=//*[@type='password']       ${password_Failed}
    click button    xpath=//*[@type='submit']
    sleep    10s
    ${response}     get text    xpath=//*[@class='nav-link']
    log     ${response}
    should contain      ${response}     ${username}

Enter the valid credentials
    click link    xpath=//*[@class='nav-link']
    sleep    2s
    input text    xpath=//*[@type='email']      ${username}
    input password    xpath=//*[@type='password']       ${password}
    click button    xpath=//*[@type='submit']
    sleep    10s
    ${response}     get text    xpath=//*[@class='nav-link']
    log     ${response}
    should contain      ${response}     ${username}

Visit City Form to fill invalid data
    click button    id=sidebarCollapse
    click link    xpath=//*[@href='/geonames/Cities/Index']
    sleep    3s
    click link    xpath=//*[@href='/geonames/Cities/Create']
    sleep    3s
    select from list by value    id=City_CrM49     356
    input text    id=City_CityLongitudeDec
    input text    id=City_CityLatitudeDec
    sleep    3s

Visit User Form with invalid data
    click button    id=sidebarCollapse
    click link    xpath=//*[@href='/geonames/Account/Index']
    sleep    3s
    click link    xpath=//*[@href='/geonames/Account/Register']
    sleep    3s
    input text    id=UserName       Testing4
    input text    id=Email      Testing4
    input password    id=Password       Testing@123
    input password    id=ConfirmPassword       Testing@123
    sleep    2s
    click button    xpath=//*[@class='btn btn-primary']
    sleep    2s
    should not contain    xpath=//*[@class='text-danger validation-summary-errors']






