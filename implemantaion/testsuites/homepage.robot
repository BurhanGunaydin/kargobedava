***Settings***
Resource  ../resources/general_keywords.robot
Resource  ../resources/homepage_keywords.robot
Test Setup  Open APP
Test Teardown  Close Browser

***Variables***

***Test Cases***
Change Currency
  [Tags]  ready
  [Documentation]
  Check Homepage
  Set Price Options
  Set Currency
