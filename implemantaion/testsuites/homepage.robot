***Settings***
Resource  ../resources/general_keywords.robot
Resource  ../resources/homepage_keywords.robot
Resource  searchresultpage.robot
Test Setup  Open APP
Test Teardown  Close Browser

***Variables***

***Keywords**
Change Currency
  [Tags]  ready
  [Documentation]
  Check Homepage
  Set Price Options
  Set Currency

Search City
  [Documentation]
  [Tags]  ready
  Enter Destination And Set Dates  Rome
  Set Persons And Search

***Test Cases***
Deneme
  Change Currency
  Search City
  Set HotelsFilter
  Check PaymentPopup
