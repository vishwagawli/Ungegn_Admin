*** Settings ***
Library    SeleniumLibrary
Resource    LoadURL.robot


*** Variables ***
${SideBar}    id=sidebarCollapse
#${GeographyMenu}     xpath=//*[@href='/geonames/Geographies/Index']
#${CreateNewGeography}        xpath=//*[@href='/geonames/Geographies/Create']

${GeographyMenu}     xpath=//*[@href='/Geographies']
${CreateNewGeography}        xpath=//*[@href='/Geographies/Create']
${ContinentDD}      id=GeoContinent
${RegionDD}     id=GeoRegion
${FirstLangDD}      id=GeoFirstOfficialLanguageId
${GeoDisplay}       id=GeoDisplay
${GeoUNNumber}      id=GeoIsUnmember
${GeoTypeDD}        id=drpGeographyType
${CaptureBtn}       xpath=//*[@class='btn btn-secondary mt-4']
${SaveButton}       xpath=//*[@class='btn btn-primary']
${UpdateIconGeo}        xpath=//*[@id="tblCountries"]/tbody/tr[1]/td[8]/div/a[1]
${FirstOffLangUpdateGeo}        id=GeoFirstOfficialLanguageId



*** Keywords ***

Launching the targeted URL
    LoadURL.Load


Visit Geography Form
    click button    id=sidebarCollapse
    click link    ${GeographyMenu}
    sleep    3s
    click link    ${CreateNewGeography}
    sleep    3s
    select from list by value    ${ContinentDD}     4
    select from list by value    ${RegionDD}     13
    select from list by value    ${FirstLangDD}       36

    click element    ${GeoDisplay}
    click element    ${GeoUNNumber}

    select from list by value    ${GeoTypeDD}        2
    sleep    2s
    click button    ${CaptureBtn}
    sleep    2s
    click button    ${SaveButton}
    sleep    2s



    ${res2}  Get Text    xpath=//h1[@class='page-title']
    log     ${res2}

    should contain    ${res2}       Geography

   # should be equal    ${res1}      ${res2}


################################Update #######################
Visit Geography Form to update
    click button    ${SideBar}
    click link    ${GeographyMenu}
    sleep    3s
    click element    ${UpdateIconGeo}
    sleep    3s
    select from list by value    ${FirstLangDD}      36
    click button    ${SaveButton}


Validate Geography is Update or not
    ${res2}  Get Text    xpath=//h1[@class='page-title']
    log     ${res2}
    should contain    ${res2}       Geography



















