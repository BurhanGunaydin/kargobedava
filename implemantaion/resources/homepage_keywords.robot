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
${next_month_button}  xpath=//*[@id="SearchBoxContainer"]/div/div/div[5]/div/div/div[1]/div/div[1]/span[2]

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
    Sleep  3
    click element  xpath=//li[@class="Suggestion__categoryName_item"]
    Sleep  3
    wait until page contains element  ${check_in_box}
    click element  ${check_in_box}
    Sleep  3
    wait until page contains element  ${next_month_button}
    Capture Page Screenshot
    debug
    Click Element  ${check_in_box}
    Click Element  ${next_month_button}
    Click Element  ${next_month_button}
    Click Element  ${next_month_button}
    Click Element  ${next_month_button}
    Click Element  ${next_month_button}
    Click Element  xpath=//span[contains(text(),'20')]
    Click Element  xpath=//span[contains(text(),'23')]
    Click Element  xpath=//*[@data-selenium='checkOutText']
    Click Element  xpath=//*[@data-selenium='occupancyChildren']/span[@data-selenium='plus']
    Select From List By Value  xpath=//*[@data-selenium="dropdownInput"]  2
    click element  xpath=//*[@data-element-name="prefer-family-rooms"]
    click element  xpath=//*[@data-selenium="searchButton"]
    Press Key  ${destination}  \\13
