*** Settings ***
Library    SeleniumLibrary
Resource    LoadURL.robot

*** Variables ***
${SideBar}    id=sidebarCollapse
${CountryMenu}     xpath=//*[@href='/Countries']
${CreateNewCountry}     xpath=//*[@href='/Countries/Create']

#${CountryMenu}     xpath=//*[@href='/geonames/Countries/Index']
#${CreateNewCountry}     xpath=//*[@href='/geonames/Countries/Create']

${ContinentDD}      id=CrContinent
${RegionDD}     id=CrRegion
${FirstOfficiaLangDD}       id=CrFirstOfficialLanguageId
${ISO2}     id=CrIso2
${ISO3}     id=CrIso3
${ISOStansdard}     id=CrIsostandard
${Display}      id=Display
${IsUNMember}       id=CrIsUnmember
${CaptureBtn}       xpath=//*[@class='btn btn-secondary mt-4']
${SaveButton}       xpath=//*[@class='btn btn-primary']
${AddCountryName}       xpath=//*[@id="content"]/div/div[3]/div[1]/aside/a[2]
${CountryShortName}     id=NameShort
${CountryLongName}      id=NameLong
${AddCountrySaveBtn}        xpath=//*[@id="content"]/div/form/div/div[16]/div/button
${UpdateIconCountry}        xpath=//*[@id="tblCountries"]/tbody/tr[1]/td[11]/div/a[1]
${FirstOffLangCountryUpdate}        id=CrFirstOfficialLanguageId
${UpdateCountrySaveBtn}     xpath=//*[@id="content"]/div/form/div/div[10]/div/button
${DeleteiconforCountry}     xpath=//*[@id="tblCountries"]/tbody/tr[1]/td[11]/div/a[3]
${delsubmitbtn}     xpath=//*[@class='btn btn-danger']

*** Keywords ***

Launching the targeted URL
    LoadURL.Load


Visit Country Form
    click button    ${SideBar}
    click link      ${CountryMenu}
    sleep    3s
    click link    ${CreateNewCountry}
    sleep    3s
    ${res1}  get value    id=CrM49
    builtin.log to console     Value is ${res1}
    select from list by value    ${ContinentDD}     4
    select from list by value    ${RegionDD}     13
    select from list by value    ${FirstOfficiaLangDD}       36
    input text    ${ISO2}     Te
    input text    ${ISO3}     st
    input text    ${ISOStansdard}      Test
    click element    ${Display}
    click element    ${IsUNMember}
    sleep    2s
    click button    ${CaptureBtn}
    sleep    2s
    click button    ${SaveButton}
    sleep    2s



    ${res2}  Get Text    xpath=//h1[@class='page-title']
    log     ${res2}

    should contain    ${res2}       Countr

   # should be equal    ${res1}      ${res2}

Add Country Name
    click element    ${AddCountryName}
    sleep    2s
    input text    ${CountryShortName}      TestCountry1
    input text    ${CountryLongName}       TestCountry1
    click button    ${AddCountrySaveBtn}
    sleep    5s
#########################################Update Country#################################

Visit Country Form to Update
    click button    ${SideBar}
    click link    ${CountryMenu}
    sleep    3s
    click element    ${UpdateIconCountry}
    sleep    2s
    select from list by value    ${FirstOffLangCountryUpdate}       36
    click button    ${UpdateCountrySaveBtn}
    ${res2}  Get Text    xpath=//h1[@class='page-title']
    log     ${res2}
    should contain    ${res2}       Countr

###########################################Update Country#################################

Visit Country Form to Delete
    click button    ${SideBar}
    click link    ${CountryMenu}
    sleep    3s
    click element    ${DeleteiconforCountry}
    sleep    3s
    click button    ${delsubmitbtn}
    sleep    2s















