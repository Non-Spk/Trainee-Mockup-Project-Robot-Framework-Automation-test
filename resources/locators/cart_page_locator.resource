*** Settings ***
Documentation       Cart page locators for Sauce Demo application.

*** Variables ***
&{cart_page_locator}
...    txt_title=xpath=//span[@data-test='title']
...    btn_back_to_shopping=id=continue-shopping
...    btn_checkout=id=checkout
...    btn_hamburger_menu=id=react-burger-menu-btn
...    btn_reset_cart=id=reset_sidebar_link