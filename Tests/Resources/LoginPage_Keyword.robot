*** Settings ***
Library    SeleniumLibrary
Resource    LoadURL.robot

*** Variables ***
${username}    prasad.shikhare@trigyn.com
${password}     Admin@@2


*** Keywords ***

Launching the targeted URL
    LoadURL.Load

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




