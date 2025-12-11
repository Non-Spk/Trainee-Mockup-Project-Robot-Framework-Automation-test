*** Settings ***
Documentation    import library and resource files

*** Keywords ***
Check login page title
    [Documentation]    Check login page title

Click login button
    [Documentation]    Click login button on login page

Input username
    [Documentation]    Input username on login page
    [Arguments]    ${username}

Input password
    [Documentation]    Input password on login page
    [Arguments]    ${password}

Open login page
    [Documentation]    Open login page URL

Check login page error
    [Documentation]    Check error alert when login error

