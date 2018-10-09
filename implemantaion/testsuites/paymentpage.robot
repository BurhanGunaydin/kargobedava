***Settings***
Resource  ../resources/general_keywords.robot
Resource  ../resources/payment_keywords.robot
Test Setup  Open APP
Test Teardown  Close Browser

***Variables***

***Test Cases***
Book Hotel
  [Tags]  ready
  [Documentation]
  Check PaymentPopup
