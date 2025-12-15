*** Settings ***
Resource    ${CURDIR}/../../resources/import.resource
Test Teardown    common_web.Close all browser

*** Keywords ***
TS_03001_001
    [Documentation]    Add single item to the cart using standard user accout
    [Tags]    F_0003    TS_013001    TS_03001_001    Add_single_item     standard_user  
    # เปิดหน้า login และตรวจสอบหน้า login เปิดสำเร็จ
    login_feature.Open login page and login to product list page    
    ...    username=${account['standard_user']['username']}
    ...    password=${account['standard_user']['password']}
    # ตรวจสอบว่าอยู่หน้า product list สำเร็จ
    product_list_page.Check product list page title
    # เพิ่มสินค้าหนึ่งชิ้นลงตะกร้า
    product_list_feature.Add one item to cart    product_name=${product['backpack']['product_name']}
    product_list_page.Click go to cart page
    cart_page.Check cart page title
    cart_feature.Verify one item detail at cart page    product=${product['backpack']}