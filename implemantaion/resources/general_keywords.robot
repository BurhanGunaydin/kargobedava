***Settings***

***Variables***
${Browser}  Chrome
${URL}  https://www.agoda.com
${driverPath}  ../data/chromedriver.exe

***Keywords***
Wait and Click Element
  [Arguments]  ${locatorName}
  wait until page contains element  ${locatorName}
  click element  ${locatorName}

Open APP
  [Documentation]  Uygulama Acilir
  Open Browser    ${URL}  ${Browser}
  Maximize Browser Window
  Capture Page Screenshot
