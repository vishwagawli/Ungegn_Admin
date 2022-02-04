*** Settings ***
Library    SeleniumLibrary
Resource    LoadURL.robot


*** Variables ***
${Division_Type}    GEOG
${DateYearFrom}     07-01-1991
${DateYearTO}       07-01-2000
${DateVisibleFrom}      07-01-1991
${DateVisibleTo}        07-01-2000
${City}        3501
${City1}        3494
${City2}        3502
${Country1}     999
${Country2}     998
${Geog1}        19
${Geog2}        20

*** Keywords ***

Launching the targeted URL
    LoadURL.Load


Visit Temporal Division Form For City
    click button    id=sidebarCollapse
    click link    xpath=//*[@href='#divisionSubmenu']
    sleep    1s
    click link    xpath=//*[@href='/geonames/CitiesDivision/Index']
    wait until element is visible    xpath=//*[@class='btn btn-primary btn-sm']
    click link    xpath=//*[@class='btn btn-primary btn-sm']
    wait until element is visible    id=divisionType

Select Division Type
    select from list by value    id=divisionType        ${Division_Type}
    input text    id=numberOfNewCities       2
    click button    xpath=//*[@class='btn btn-primary']
    wait until element is visible    id=select2-NewEntity_CityId-container

Fill The City Details Form
    click element    id=select2-NewEntity_CityId-container
    input text      xpath=//*[@class='select2-search__field']       ${City}
    click element    xpath=//*[@class='select2-results__option select2-results__option--selectable select2-results__option--highlighted']
    click element    id=select2-NewEntity_StatusId-container
    input text      xpath=//*[@class='select2-search__field']       Former
    click element    xpath=//*[@class='select2-results__option select2-results__option--selectable select2-results__option--highlighted']
    input text    id=NewEntity_CityName      Test
    input text    id=NewEntity_CityYearFrom      ${DateYearFrom}
    input text    id=NewEntity_CityYearTo        ${DateYearTO}
    input text    id=NewEntity_CityYearVisibleFrom      ${DateVisibleFrom}
    sleep    4s
    input text    id=NewEntity_CityYearVisibleTo     ${DateVisibleTo}

First Country Details
    select from list by value    id=NewCountries_0__CountryId       ${Country1}
    click element    id=select2-NewCountries_0__StatusId-container
    input text      xpath=//*[@class='select2-search__field']       Country created
    sleep    4s
    click element    xpath=//*[@class='select2-results__option select2-results__option--selectable select2-results__option--highlighted']
    input text    id=NewCountries_0__CountryName        VishuTest
    input text    id=NewCountries_0__CountryYearFrom        ${DateYearFrom}
    input text    id=NewCountries_0__CountryYearVisibleFrom     ${DateVisibleFrom}


Second Country Details
    select from list by value    NewCountries_1__CountryId      ${Country2}
    click element    id=select2-NewCountries_1__StatusId-container
    input text      xpath=//*[@class='select2-search__field']       Country created
    click element    xpath=//*[@class='select2-results__option select2-results__option--selectable select2-results__option--highlighted']
    input text    id=NewCountries_1__CountryName        Vishu998
    input text    id=NewCountries_1__CountryYearFrom        ${DateYearFrom}
    input text    id=NewCountries_1__CountryYearVisibleFrom     ${DateVisibleFrom}
    sleep    4s
    click element    xpath=//*[@id="content"]/div/form[2]/div/div[11]/div/button
    sleep    4s

Validate If Division Got Added
    table column should contain      xpath=//*[@class='table table-bordered table-striped table-hover']    3       Test



####################City To City####################

First City Details
    click element    id=select2-NewCities_0__CityId-container
    input text      xpath=//*[@class='select2-search__field']       ${City1}
    click element    xpath=//*[@class='select2-results__option select2-results__option--selectable select2-results__option--highlighted']
    click element    id=select2-NewCities_0__StatusId-container
    input text      xpath=//*[@class='select2-search__field']       City created
    sleep    2s
    click element    xpath=//*[@class='select2-results__option select2-results__option--selectable select2-results__option--highlighted']
    input text    id=NewCities_0__CityName        Test
    input text    id=NewCities_0__CityYearFrom       ${DateYearFrom}
    input text    id=NewCities_0__CityYearVisibleFrom     ${DateVisibleFrom}
    sleep    2s
    input text    id=NewCities_0__CityYearTo        ${DateYearTO}
    input text    id=NewCities_0__CityYearVisibleTo     ${DateVisibleTo}


Second City Details
    click element    id=select2-NewCities_1__CityId-container
    input text      xpath=//*[@class='select2-search__field']       ${City2}
    click element    xpath=//*[@class='select2-results__option select2-results__option--selectable select2-results__option--highlighted']
    click element    id=select2-NewCities_1__StatusId-container
    input text      xpath=//*[@class='select2-search__field']       City created
    click element    xpath=//*[@class='select2-results__option select2-results__option--selectable select2-results__option--highlighted']
    input text    id=NewCities_1__CityName        Test
    input text    id=NewCities_1__CityYearFrom        ${DateYearFrom}
    input text    id=NewCities_1__CityYearVisibleFrom     ${DateVisibleFrom}
    input text    id=NewCities_1__CityYearTo        ${DateYearTO}
    input text    id=NewCities_1__CityYearVisibleTo     ${DateVisibleTo}
    sleep    4s
    click element    xpath=//*[@id="content"]/div/form[2]/div/div[11]/div/button
    sleep    4s


Validate division City for City to City
    element should contain    xpath=//*[@id="content"]/div/div[1]/div/h1        Division Details



####################City To Geography####################

First Geography Details
    select from list by value   id=NewGeographies_0__GeographyId      ${Geog1}
    click element    id=select2-NewGeographies_0__StatusId-container
    input text      xpath=//*[@class='select2-search__field']       Geography created
    sleep    2s
    click element    xpath=//*[@class='select2-results__option select2-results__option--selectable select2-results__option--highlighted']
    input text    id=NewGeographies_0__GeographyName        Test
    input text    id=NewGeographies_0__GeographyYearFrom        ${DateYearFrom}
    input text    id=NewGeographies_0__GeographyYearVisibleFrom     ${DateVisibleFrom}
    input text    id=NewGeographies_0__GeographyYearTo        ${DateYearTO}
    input text    id=NewGeographies_0__GeographyYearVisibleTo     ${DateVisibleTo}
    sleep    2s


Second Geography Details
    select from list by value   id=NewGeographies_1__GeographyId      ${Geog2}
    click element    id=select2-NewGeographies_1__StatusId-container
    input text      xpath=//*[@class='select2-search__field']       Geography created
    click element    xpath=//*[@class='select2-results__option select2-results__option--selectable select2-results__option--highlighted']
    input text    id=NewGeographies_1__GeographyName        Test
    input text    id=NewGeographies_1__GeographyYearFrom        ${DateYearFrom}
    input text    id=NewGeographies_1__GeographyYearVisibleFrom     ${DateVisibleFrom}
    input text    id=NewGeographies_1__GeographyYearTo        ${DateYearTO}
    input text    id=NewGeographies_1__GeographyYearVisibleTo     ${DateVisibleTo}
    sleep    4s
    click element    xpath=//*[@id="content"]/div/form[2]/div/div[11]/div/button
    sleep    4s











