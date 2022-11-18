*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${LOGIN_USERNAME}       user-name
${LOGIN_PASSWORD}       password
${LOGIN_BUTTON}         login-button
${LOGIN_LOGO}           class:login_logo
${LOGIN_BOT}            class:bot_column
${LOGIN_ERROR_TEXT}     //*[@data-test="error"]

*** Keywords ***
Home Page Displayed
  Wait Until Element Is Visible     ${LOGIN_USERNAME}
  Element Should Be Visible         ${LOGIN_USERNAME}
  Wait Until Element Is Visible     ${LOGIN_PASSWORD}
  Element Should Be Visible         ${LOGIN_PASSWORD}
  Wait Until Element Is Visible     ${LOGIN_BUTTON}
  Element Should Be Visible         ${LOGIN_BUTTON}
  Wait Until Element Is Visible     ${LOGIN_LOGO}
  Element Should Be Visible         ${LOGIN_LOGO}
  Wait Until Element Is Visible     ${LOGIN_BOT}
  Element Should Be Visible         ${LOGIN_BOT}

Input Username
  [Arguments]     ${username}
  Input Text      ${LOGIN_USERNAME}   ${username}

Input Password
  [Arguments]     ${password}
  Input Text      ${LOGIN_PASSWORD}   ${password}

Click Login Button
  Click Button    ${LOGIN_BUTTON}

Read Error Message
  [Arguments]                         ${expected_error_text}
  Wait Until Element Is Visible       ${LOGIN_ERROR_TEXT}
  Element Should Be Visible           ${LOGIN_ERROR_TEXT}
  ${actual} =   Get Text              ${LOGIN_ERROR_TEXT}
  Element Text Should Be              ${LOGIN_ERROR_TEXT}     ${expected_error_text}