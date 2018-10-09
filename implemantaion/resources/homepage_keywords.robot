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
  Capture Page Screenshot
  click element  ${select_euro}
  Capture Page Screenshot
