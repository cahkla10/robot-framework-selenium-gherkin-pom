*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${MAIN_PAGE}                  https://www.saucedemo.com/
${BROWSER}                    Firefox
${VALID_USERNAME}             standard_user
${VALID_PASSWORD}             secret_sauce
${INVALID_USERNAME}           standarduser
${INVALID_PASSWORD}           secretsauce
${ERROR_TEXT_USERNAME}        Epic sadface: Username is required
${ERROR_TEXT_PASSWORD}        Epic sadface: Password is required
${ERROR_TEXT_USERNAME_PASS}   Epic sadface: Username and password do not match any user in this service

*** Keywords ***
Open Home Page
  Open Browser    ${MAIN_PAGE}    ${BROWSER}
  # Maximize Browser Window