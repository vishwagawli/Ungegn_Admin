*** Settings ***
Library    SeleniumLibrary
Resource    LoadURL.robot



*** Keywords ***

Launching the targeted URL
    LoadURL.Load


Begin Search for country
    click element    id=select2-txtSearch-container
    input text    xpath=//*[@class='select2-search__field']     India
    sleep    2s
    click element    xpath=//*[@class='select2-results__option select2-results__option--selectable select2-results__option--highlighted']
    click button    xpath=//*[@class='btn btn-primary btn-sm']
    wait until element is visible   xpath=//*[@class='page-title']

Validate the words
  #  ${res1}  Get Text    xpath=//*[@id="dashBoardTable"]/tbody/tr[5]/td[2]
   # should contain    ${res1}   India
   table column should contain      xpath=//*[@id="dashBoardTable"]     2       India






