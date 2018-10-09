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
${name}  id=fullName
${hotel_name}  class=hotel-name
${email}  id=email
${phone_number}  id=phoneNumber
${submit_button}  name=booking-continue-btn


${information_text}  Your information
${name_input}  id=fullName
${email_input}  id=email
${number_input}  id=phoneNumber
${non_smoking_radio}  xpath=//*[@data-element-name='non-smoking-preference']
${continue_button}  xpath=//*[@data-element-name='submit-step1-button']
${payment_method}  id=paymentMethod

${available_payment_text}  Available payment methods:
${payment_method_value}  Visa / MasterCard / JCB / Amex
${credit_input}  id=cardNumber
${name_input}  id=cardHolderName
${expire-date}  id=expiryDate
${cvv_input}  id=cvvCode
${bank_input}  id=issuingBank
${submit_booking}  xpath=//*[@data-element-name='submit-step2-button']

${name_value}  Test User
${email_value}  testuser@hackathon.com
${number_value}  5335555555
${credit_number}  4841184239341107
${card_holder_name}  User
${date_value}  0827
${cvc_value}  504
${bank_name}  AmericanExpress

***Keywords***
Check PaymentPopup
  click element  ${hotel_name}
  Select Window  locator=NEW
  click element  ${pay_button}
  wait until page contains text  ${information_text}
  clear element text  ${name_input}
  input text  ${name_input}  ${name_value}
  clear element text  ${email_input}
  input text  ${email_input}  ${email_value}
  clear element text  ${number_input}
  input text  ${number_input}  ${number_value}
  click element  ${continue_button}

  wait until page contains text  ${available_payment_text}
  Select From List  ${payment_method}  ${payment_method_value}
  clear element text  ${credit_input}
  input text  ${credit_input}  ${credit_number}
  clear element text  ${name_input}
  input text  ${name_input}  ${card_holder_name}
  clear element text  ${expire-date}
  input text  ${expire-date}  ${date_value}
  clear element text  ${cvv_input}
  input text  ${cvv_input}  ${cvc_value}
  clear element text  ${bank_input}
  input text  ${bank_input}  ${bank_name}
