*** Settings ***
Resource    ${CURDIR}/../../../../resources/import.resource

*** Keywords ***
Check product list page title
    [Documentation]   Verifies that the current page is the Product List page by validating its title text. 
    common_web.Element should contain text
    ...    locator=${product_list_page_locator['txt_title']}
    ...    expected_text=${txt_product_list_page['txt_title']}

Click add one item to cart
    [Documentation]    Adds a single item to the shopping cart by clicking its 'Add to cart' button.
    [Arguments]    ${product_name}
    ${dynamic_product}=    
    ...    BuiltIn.Set Variable    
    ...    xpath=//div[@class='inventory_item_name' and text()='${product_name}']/ancestor::div[@class='inventory_item']//button
    common_web.Click element and wait    
    ...    locator=${dynamic_product}
    ...    wait_element_locator=${dynamic_product}

Click go to cart page
    [Documentation]    Clicks the shopping cart icon to navigate to the Cart page.
    common_web.Click element and wait
    ...    locator=${product_list_page_locator['go_to_cart_btn']}
    ...    wait_element_locator=${product_list_page_locator['go_to_cart_btn']}

Select sort type option
    [Documentation]    Selects the product sorting order from the dropdown menu based on the given value.
    [Arguments]    ${option}
    common_web.Select dropdown option    locator=${product_list_page_locator['btn_dropdown']}    option=${option}

Add all item to cart
    [Documentation]    Iterates through all product items on the page and adds them to the cart.
    ${item_list}=    SeleniumLibrary.Get WebElements    locator=${product_list_page_locator['add_all_product_to_cart_btn']}
    FOR    ${item}    IN    @{item_list}
        common_web.Click element and wait    locator=${item}
    END

Remove item from cart 
    [Documentation]    For remove one item from cart by click button 
    common_web.Click element and wait    locator=${product_list_page_locator['remove_item_btn']}    wait_element_locator=${product_list_page_locator['remove_item_btn']}

Check product detail have added to cart
    [Documentation]    Check product information that have add to cart by check product name, product description and product price
    [Arguments]    ${product_detail}
    common_web.Element should contain text
    ...    locator=${product_list_page_locator['lbl_cart_item']}
    ...    expected_text=${product_detail}