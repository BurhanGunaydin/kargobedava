***Settings***
Library  Collections
Library  DebugLibrary
Library  String
Library  FakerLibrary
Library  OperatingSystem
Library  BuiltIn
Library  Selenium2Library
Library  Process
Resource  general_keywords.robot
Resource  ../resources/searchresultpage.robot

***Variables***
${homepage_title}  xpath=//*[@data-selenium='hero-banner-h1']
${currency_button}  xpath=//*[@data-selenium='currency-trigger']
${price_options}  xpath=//*[@data-selenium='price-view-option-inclusive']
${select_euro}  xpath=//*[@data-value='EUR']
${price_display_text}  xpath=//*[@data-selenium='price-display']
${destination}  xpath=//*[@data-selenium='textInput']
${check_in_box}  xpath=//*[@data-selenium='checkInBox']
${check_in_text}  xpath=//*[@data-selenium='checkInText']
${check_out_box}  xpath=//*[@data-selenium='checkOutBox']
${check_out_text}  xpath=//*[@data-selenium='checkOutText']
${next_month_button}  xpath=//*[@id="SearchBoxContainer"]/div[1]/div/div[5]/div/div/div[1]/div/div[1]/span[2]
${autocomplete_list}  class=AutocompleteList
${first_suggestion}  xpath=//*[@id="SearchBoxContainer"]/div[1]/div/div[5]/div/div/ul/li[1]/ul
${month_text}  xpath=//*[@id="SearchBoxContainer"]/div[1]/div/div[5]/div/div/div[1]/div/div[2]/div[1]/div[1]/div
${20_april}  xpath=//*[@id="SearchBoxContainer"]/div/div/div[5]/div/div/div[1]/div/div[2]/div[2]/div[3]/div[3]/div[6]/span
${24_april}  xpath=//*[@id="SearchBoxContainer"]/div/div/div[5]/div/div/div[1]/div/div[2]/div[2]/div[3]/div[4]/div[3]/span
${children_add}  xpath=//*[@data-selenium='occupancyChildren']/span[@data-selenium='plus']
${children_age}  xpath=//*[@data-selenium="dropdownInput"]  2
${family_room_button}  xpath=//*[@data-element-name="prefer-family-rooms"]
${search_button}  xpath=//*[@data-selenium="searchButton"]

***Keywords***
Check Homepage
  wait until page contains element  ${homepage_title}

Set Price Options
  click element  ${currency_button}
  wait until page contains element  ${price_display_text}
  Capture Page Screenshot
  click element  ${price_options}

Set Currency
  [Documentation]
  Wait Until Page Does Not Contain Element  ${price_display_text}
  Capture Page Screenshot
  click element  ${currency_button}
  wait until page contains element  ${price_display_text}
  Capture Page Screenshot
  click element  ${select_euro}
  Wait Until Page Does Not Contain Element  ${price_display_text}
  Capture Page Screenshot

Enter Destination And Set Dates
    [Arguments]  ${city}
    [Documentation]
    click element  ${destination}
    Input Text  ${destination}  ${city}
    wait until page contains element  ${autocomplete_list}
    wait until page contains element  ${first_suggestion}
    click element  ${first_suggestion}
    wait until page does not contain element  ${autocomplete_list}
    click element  ${next_month_button}
    click element  ${next_month_button}
    click element  ${next_month_button}
    click element  ${next_month_button}
    click element  ${next_month_button}
    sleep  1
    wait until page contains element   ${20_april}
    click element  ${20_april}
    wait until page contains element  ${24_april}
    click element  ${24_april}

Set Persons and Search
    click element  ${children_add}
    Select From List By Value  xpath=//*[@data-selenium="dropdownInput"]  2
    click element  ${family_room_button}
    click element  ${search_button}
