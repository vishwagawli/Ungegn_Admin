*** Settings ***
Library    SeleniumLibrary
Resource    LoadURL.robot

*** Variables ***
${SideBar}    id=sidebarCollapse
#${CityMenu}     xpath=//*[@href='/geonames/Cities/Index']
#${CreateNewCity}        xpath=//*[@href='/geonames/Cities/Create']

${CityMenu}     xpath=//*[@href='/Cities']
${CreateNewCity}        xpath=//*[@href='/Cities/Create']

${CityLongi}        id=City_CityLongitudeDec
${CityLati}     id=City_CityLatitudeDec
${CityNameTab}      id=cityName-tab
${EndonymLangID}        id=EndonymName_LanguageId
${EndonymShortName}     name=EndonymName.NameShort
${EndonymLongName}      name=EndonymName.NameLong
${SaveButton}       xpath=//*[@class='btn btn-primary']
${UpdateBtnCity}        xpath=//*[@class='btn btn-default'][1]
${CoordinateSource}     id=CityCoordinateSrcDec
${CoordinateSourceDMS}      id=CityCoordinateSrcDms
${deletebtn}        xpath=//*[@class='btn btn-default'][3]
${delsubmitbtn}     xpath=//*[@class='btn btn-danger']

*** Keywords ***

Launching the targeted URL
    LoadURL.Load


Visit City Form
    click button    ${SideBar}
    click link      ${CityMenu}
    sleep    3s
    click link    ${CreateNewCity}
    sleep    3s
    select from list by value    id=City_CrM49     356

    input text    ${CityLongi}      75.79591326927225
    input text    ${CityLati}       22.59372606392931
    sleep    3s

Visit CityName Form
    click element    ${CityNameTab}
    sleep   3s
    select from list by value    ${EndonymLangID}      36
    input text    ${EndonymShortName}        Test
    input text    ${EndonymLongName}     Test
    click button    ${SaveButton}
    sleep   3s

Verify If City Got Added
    ${res1}  Get Text    xpath=//*[@class="table table-bordered table-striped table-hover m-0"]/tbody/tr[1]/td[2]
    should contain    ${res1}   Test
    ${res2}  Get Text    xpath=//*[@class="table table-bordered table-striped table-hover m-0"]/tbody/tr[1]/td[3]
    should contain    ${res2}   Test
#############################################################
Visit City Form to update
    click button    ${SideBar}
    click link    ${CityMenu}
    sleep    3s
    click link    ${UpdateBtnCity}
    sleep    3s
    select from list by value    ${CoordinateSource}        1
    select from list by value    ${CoordinateSourceDMS}        1
    sleep    3s
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    click element    xpath=//*[@id="content"]/div/form/div/div[8]/div/a[1]

    sleep    3s

Visit Add Name Form
    input text    id=NameShort      Testing
    input text    id=NameLong       Testing
    click button    xpath=//*[@class='btn btn-primary'][1]
    sleep    3s

Verify If Updated City Got Added
    ${res1}  Get Text    xpath=//*[@class="table table-bordered table-striped table-hover m-0"]/tbody/tr[1]/td[2]
    should contain    ${res1}   Test
    ${res2}  Get Text    xpath=//*[@class="table table-bordered table-striped table-hover m-0"]/tbody/tr[1]/td[3]
    should contain    ${res2}   Test

################################################################

Visit City Form to Delete
    click button    ${SideBar}
    click link    ${CityMenu}
    sleep    3s
    click link    ${deletebtn}
    sleep    3s
    click button    ${delsubmitbtn}













