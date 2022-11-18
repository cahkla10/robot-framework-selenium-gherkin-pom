*** Settings ***
Library           SeleniumLibrary
Resource          ../setups/resources.robot
Resource          ../steps/login_step.robot
Test Setup        Open Home Page
Test Teardown     Close Browser


*** Test Cases ***
Scenario: User want to login using correct credentials
    [Tags]      correct_credentials     smoke
    Given user see login page elements is displayed
    Then user input username and password "${VALID_USERNAME}" "${VALID_PASSWORD}"
    Then user click on Login button

Scenario: User want to login using incorrect credentials
    [Tags]      incorrect_credentials    smoke
    Given user see login page elements is displayed
    Then user input username and password "${INVALID_USERNAME}" "${INVALID_PASSWORD}"
    Then user click on Login button
    Then user read the error message "${ERROR_TEXT_USERNAME_PASS}"

Scenario: User want to login only username
    [Tags]      only_username    smoke
    Given user see login page elements is displayed
    Then user input username "${VALID_USERNAME}"
    Then user click on Login button
    Then user read the error message "${ERROR_TEXT_PASSWORD}"

Scenario: User want to login only password
    [Tags]      only_password    smoke
    Given user see login page elements is displayed
    Then user input password "${VALID_PASSWORD}"
    Then user click on Login button
    Then user read the error message "${ERROR_TEXT_USERNAME}"

Scenario: User want to login empty credentials
    [Tags]      empty_credentials    smoke
    Given user see login page elements is displayed
    Then user click on Login button
    Then user read the error message "${ERROR_TEXT_USERNAME}"