***Settings***
Resource  ../resources/general_keywords.robot
Resource  ../resources/search_result_keywords.robot
Test Setup  Open APP
Test Teardown  Close Browser

***Variables***

***Test Cases***
Set HotelsFilter
  [Tags]  ready
  [Documentation]
  Check SearchResultPage
  Set MaxPricePerNight
  Set Property Type
  Set Rating Type
  Set Free Cancelition
  Set Property facilities
  Set Guest Rating
