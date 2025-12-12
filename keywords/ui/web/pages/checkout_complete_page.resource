*** Settings ***
Resource    ${CURDIR}/../../../../resources/import.resource

*** Keywords ***
Check page title
    [Documentation]    Check if page title display the correct text or not
    common_web.Wait for element is ready    ${checkout_complete_page_locator['txt_page_title']}    ${wait_timeout['normally['short_timeout']']}
    common_web.Element should contain text    ${checkout_complete_page_locator['page_title']}    ${txt_checkout_complete_page['txt_title']}

Check thank you message
    [Documentation]    Check if thank you message display or not
    common_web.Wait for element is ready    ${checkout_complete_page_locator['txt_thank_you']}    ${wait_timeout['normally['short_timeout']']}
    common_web.Element should contain text    ${checkout_complete_page_locator['txt_thank_you']}    ${txt_checkout_complete_page['txt_thankyou']}

CLick back home btn and check page
    [Documentation]    Click back home button and next page should contain locator
    [Arguments]    ${wait_element_locator}
    common_web.Click element and wait    ${checkout_complete_page_locator['btn_back_home']}    ${wait_element_locator}    ${wait_timeout['normally['short_timeout']']}