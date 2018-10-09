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
${pay_button}  class=ChildRoomsList-bookButtonInput
${name}  id:fullName
${hotel_name}  class:hotel-name
${email}  id:email
${phone_number}  id:phoneNumber
${submit_button}  name:booking-continue-btn


***Keywords***
Check PaymentPopup
  click element  ${hotel_name}
  Select Window  locator=NEW
  click element  ${pay_button}
  Input Text  ${name}  John Doe
  Input Text  ${email}  john@doe.com
  Input Text  ${phone_number}  +905556987744
  click element  ${submit_button}

