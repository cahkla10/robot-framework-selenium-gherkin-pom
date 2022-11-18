*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${PRODUCTS_BURGER_MENU}             react-burger-menu-btn
${PRODUCTS_LOGO}                    class:app_logo
${PRODUCTS_TITLE}                   class:title
${PRODUCTS_CART}                    shopping_cart_container
${PRODUCTS_SORT}                    class:product_sort_container
${PRODUCTS_IMG}                     class:inventory_item_img
${PRODUCTS_NAME}                    class:inventory_item_name
${PRODUCTS_DESC}                    class:inventory_item_desc
${PRODUCTS_PRICE}                   class:inventory_item_price
${PRODUCTS_ADD_CART}                add-to-cart-sauce-labs-backpack
${PRODUCTS_REMOVE_CART}             remove-sauce-labs-backpack
${PRODUCTS_ALL_ITEMS}               inventory_sidebar_link
${PRODUCTS_LOGOUT}                  logout_sidebar_link

*** Keywords ***
Products Page Displayed
  Wait Until Element Is Visible     ${PRODUCTS_BURGER_MENU}
  Element Should Be Visible         ${PRODUCTS_BURGER_MENU}
  Wait Until Element Is Visible     ${PRODUCTS_LOGO}
  Element Should Be Visible         ${PRODUCTS_LOGO}
  Wait Until Element Is Visible     ${PRODUCTS_TITLE}
  Element Should Be Visible         ${PRODUCTS_TITLE}
  Wait Until Element Is Visible     ${PRODUCTS_CART}
  Element Should Be Visible         ${PRODUCTS_CART}
  Wait Until Element Is Visible     ${PRODUCTS_SORT}
  Element Should Be Visible         ${PRODUCTS_SORT}

Click Burger Menu
  Click Element      ${PRODUCTS_BURGER_MENU}

Click All Items
  Click Element     ${PRODUCTS_ALL_ITEMS}

Click Logout
  Click Element     ${PRODUCTS_LOGOUT} 

Click Cart
  Click Element     ${PRODUCTS_CART}

Click Sort
  [Arguments]       ${sort_order}
  Click Element     ${PRODUCTS_SORT}
  Click Element     //*[@value="${sort_order}"]

Click Product Item
  [Arguments]       ${product_name}
  Click Element     ${PRODUCTS_NAME}            ${product_name}

Click Add To Cart
  [Arguments]       ${product_name}
  Click Element     ${PRODUCTS_ADD_CART}        ${product_name}

Click Remove Cart
  [Arguments]       ${product_name}
  Click Element     ${PRODUCTS_REMOVE_CART}     ${product_name}

Read Products Title
  [Arguments]                         ${expected_title_page}
  ${actual} =   Get Text              ${PRODUCTS_TITLE}
  Element Text Should Be              ${PRODUCTS_TITLE}     ${expected_title_page}