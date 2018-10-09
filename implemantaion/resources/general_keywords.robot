***Settings***
Library           Selenium2Library

***Variables***
${Browser}  Chrome
${URL}  https://www.agoda.com
${BSUser}  burhan27
${AccessKey}  RrdusHWjNqng7zT2U7Qy
${RemoteUrl}  http://burhan27:RrdusHWjNqng7zT2U7Qy@hub.browserstack.com:80/wd/hub

***Keywords***
Wait and Click Element
  [Arguments]  ${locatorName}
  wait until page contains element  ${locatorName}
  click element  ${locatorName}

Open APP
  [Documentation]  Uygulama Acilir
  Open Browser    ${URL}  browser=Chrome  remote_url=${RemoteUrl}  desired_capabilities=acceptInsecureCerts:true
  Maximize Browser Window
  Capture Page Screenshot