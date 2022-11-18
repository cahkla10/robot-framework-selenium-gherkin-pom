*** Settings ***
Library           SeleniumLibrary
Resource          ../setups/resources.robot
Resource          ../pages/login_page.robot
Resource          ../steps/login_step.robot

*** Keywords ***
User see login page elements is displayed
    Home Page Displayed

User input username "${username}"
    Input Username      ${username}

User input password "${password}"
    Input Password      ${password}

User click on Login button
    Click Login Button

User read the error message "${expected_error_text}"
    Read Error Message      ${expected_error_text}

User input username and password "${username}" "${password}"
    Input username     ${username}
    Input password     ${password}