*** Settings ***
Resource    ${CURDIR}/../../../../resources/import.resource

*** Keywords ***
Tap cart button
    [Documentation]    สัมผัสปุ่มตะกร้า
    common_mobile.Tap element when ready    locator=${home_page_locator['btn_cart']}

Tap profile button
    [Documentation]    สัมผัสปุ่มโปรไฟล์
    common_mobile.Tap element when ready    locator=${home_page_locator['btn_profile']}

Tap search bar
    [Documentation]    สัมผัสช่องค้นหา
    common_mobile.Tap element when ready    locator=${home_page_locator['txt_seach_item']}