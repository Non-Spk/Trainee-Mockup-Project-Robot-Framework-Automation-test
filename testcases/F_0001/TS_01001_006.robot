*** Settings ***
Resource    ${CURDIR}/../../resources/import.resource
Test Teardown    common_web.Close this browser

*** Test Cases ***
Login successfully with visual_user
    [Documentation]    Verifies that the visual_user can't login and access the Product List page.
    [Tags]    F_0001    TS_01001    login   visual_user
    login_feature.Open website and login to product list page
    ...    username=${account['visual_user']['username']}
    ...    password=${account['visual_user']['password']}