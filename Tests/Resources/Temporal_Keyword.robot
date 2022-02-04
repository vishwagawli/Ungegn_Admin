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


Visit Temporal Division Form For Country
    click button    id=sidebarCollapse
    click link    xpath=//*[@href='#divisionSubmenu']
    sleep    1s
    click link    xpath=//*[@href='/geonames/CountriesDivision/Index']
    wait until element is visible    xpath=//*[@class='btn btn-primary btn-sm']
    click link    xpath=//*[@class='btn btn-primary btn-sm']
    wait until element is visible    id=divisionType

Select Division Type
    select from list by value    id=divisionType        ${Division_Type}
    input text    id=numberOfNewCountries       2
    click button    xpath=//*[@class='btn btn-primary']
    wait until element is visible    id=select2-NewEntity_CountryId-container

Fill The Country Details Form
    click element    id=select2-NewEntity_CountryId-container
    input text      xpath=//*[@class='select2-search__field']       999
    click element    xpath=//*[@class='select2-results__option select2-results__option--selectable select2-results__option--highlighted']
    click element    id=select2-NewEntity_StatusId-container
    input text      xpath=//*[@class='select2-search__field']       Former
    click element    xpath=//*[@class='select2-results__option select2-results__option--selectable select2-results__option--highlighted']
    input text    id=NewEntity_CountryName      VishuTest
    input text    id=NewEntity_CountryYearFrom      ${DateYearFrom}
    input text    id=NewEntity_CountryYearTo        ${DateYearTO}
    input text    id=NewEntity_CountryYearVisibleFrom       ${DateVisibleFrom}
    sleep    4s
    input text    id=NewEntity_CountryYearVisibleTo     ${DateVisibleTo}

First Country Details
    click element    id=select2-NewCountries_0__CountryId-container
    input text      xpath=//*[@class='select2-search__field']       998
    sleep    4s
    click element    xpath=//*[@class='select2-results__option select2-results__option--selectable select2-results__option--highlighted']
    click element    id=select2-NewCountries_0__StatusId-container
    input text      xpath=//*[@class='select2-search__field']       Country created
    sleep    4s
    click element    xpath=//*[@class='select2-results__option select2-results__option--selectable select2-results__option--highlighted']
    input text    id=NewCountries_0__CountryName        Vishu998
    input text    id=NewCountries_0__CountryYearFrom        ${DateYearFrom}
    input text    id=NewCountries_0__CountryYearVisibleFrom     ${DateVisibleFrom}


Second Country Details
    click element    id=select2-NewCountries_1__CountryId-container
    input text      xpath=//*[@class='select2-search__field']       997
    click element    xpath=//*[@class='select2-results__option select2-results__option--selectable select2-results__option--highlighted']
    click element    id=select2-NewCountries_1__StatusId-container
    input text      xpath=//*[@class='select2-search__field']       Country created
    click element    xpath=//*[@class='select2-results__option select2-results__option--selectable select2-results__option--highlighted']
    input text    id=NewCountries_1__CountryName        Vishu997
    input text    id=NewCountries_1__CountryYearFrom        ${DateYearFrom}
    input text    id=NewCountries_1__CountryYearVisibleFrom     ${DateVisibleFrom}
    sleep    4s
    click element    xpath=//*[@id="content"]/div/form[2]/div/div[11]/div/button
    sleep    4s

Validate If Division Got Added
    table column should contain      xpath=//*[@class='table table-bordered table-striped table-hover']    3       VishuTest



####################Country To City####################

First City Details
    select from list by value   id=NewCities_0__CityId      ${City1}
    click element    id=select2-NewCities_0__StatusId-container
    input text      xpath=//*[@class='select2-search__field']       City created
    sleep    2s
    click element    xpath=//*[@class='select2-results__option select2-results__option--selectable select2-results__option--highlighted']
    input text    id=NewCities_0__CityName        Test
    input text    id=NewCities_0__CityYearFrom        ${DateYearFrom}
    input text    id=NewCities_0__CityYearVisibleFrom     ${DateVisibleFrom}
    sleep    2s


Second City Details
    select from list by value   id=NewCities_1__CityId      ${City2}
    click element    id=select2-NewCities_1__StatusId-container
    input text      xpath=//*[@class='select2-search__field']       City created
    click element    xpath=//*[@class='select2-results__option select2-results__option--selectable select2-results__option--highlighted']
    input text    id=NewCities_1__CityName        Test
    input text    id=NewCities_1__CityYearFrom        ${DateYearFrom}
    input text    id=NewCities_1__CityYearVisibleFrom     ${DateVisibleFrom}
    sleep    4s
    click element    xpath=//*[@id="content"]/div/form[2]/div/div[9]/div/button
    sleep    4s



####################Country To Geography####################

First Geography Details
    select from list by value   id=NewGeographies_0__GeographyId      ${Geog1}
    click element    id=select2-NewGeographies_0__StatusId-container
    input text      xpath=//*[@class='select2-search__field']       Geography created
    sleep    2s
    click element    xpath=//*[@class='select2-results__option select2-results__option--selectable select2-results__option--highlighted']
    input text    id=NewGeographies_0__GeographyName        Test
    input text    id=NewGeographies_0__GeographyYearFrom        ${DateYearFrom}
    input text    id=NewGeographies_0__GeographyYearVisibleFrom     ${DateVisibleFrom}
    sleep    2s


Second Geography Details
    select from list by value   id=NewGeographies_1__GeographyId      ${Geog2}
    click element    id=select2-NewGeographies_1__StatusId-container
    input text      xpath=//*[@class='select2-search__field']       Geography created
    click element    xpath=//*[@class='select2-results__option select2-results__option--selectable select2-results__option--highlighted']
    input text    id=NewGeographies_1__GeographyName        Test
    input text    id=NewGeographies_1__GeographyYearFrom        ${DateYearFrom}
    input text    id=NewGeographies_1__GeographyYearVisibleFrom     ${DateVisibleFrom}
    sleep    4s
    click element    xpath=//*[@id="content"]/div/form[2]/div/div[9]/div/button
    sleep    4s











