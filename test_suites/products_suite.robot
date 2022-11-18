*** Settings ***
Library           SeleniumLibrary
Resource          ../setups/resources.robot
Resource          ../steps/products_step.robot
Resource          ../steps/login_step.robot
Test Setup        Open Home Page
Test Teardown     Close Browser


*** Test Cases ***
Scenario: User want to read products page title
    [Tags]      read_title     smoke
    Given user see login page elements is displayed
    Then user input username and password "${VALID_USERNAME}" "${VALID_PASSWORD}"
    Then user click on Login button
    Then user read title page "PRODUCTS"

Scenario: User want to sort the products
    [Tags]      product_sort    smoke
    Given user see login page elements is displayed
    Then user input username and password "${VALID_USERNAME}" "${VALID_PASSWORD}"
    Then user click on Login button
    Then user read title page "PRODUCTS"
    Then user sort products "az" "za" "lohi" "hilo"

Scenario: User want to add to cart a product Sauce Labs Onesie
    [Tags]      add_cart    smoke
    Given user see login page elements is displayed
    Then user input username and password "${VALID_USERNAME}" "${VALID_PASSWORD}"
    Then user click on Login button
    Then user read title page "PRODUCTS"
    Then user add to cart product "Sauce Labs Onesie"
    Then user see on cart

Scenario: User want to see product name detail
    [Tags]      product_detail    smoke
    Given user see login page elements is displayed
    Then user input username and password "${VALID_USERNAME}" "${VALID_PASSWORD}"
    Then user click on Login button
    Then user read title page "PRODUCTS"
    Then user click on product "Sauce Labs Onesie"
    Then user read product "Sauce Labs Onesie" detail