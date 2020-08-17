*** Settings ***
Library    SeleniumLibrary
Library    ../ExternalKeywords/locators.py
Library    ../ExternalKeywords/sample.py

*** Variables ***
${title}    Login

*** Keywords ***
get userName locator
    ${x}=   ReadLoactors    Login.userNameButton
    [Return]    ${x}

get password locator
    ${x}=   ReadLoactors    Login.passwordButtonId
    [Return]    ${x}

get loginButtonID locator
    ${x}=   ReadLoactors    Login.LoginButton
    [Return]    ${x}

get clickLoginLink
    ${x}=   ReadLoactors    Login.LoingLink
    [Return]    ${x}

User enters the user name
    [Arguments]     ${userName}
    ${temp}=     get userName locator
    [Return]    ${temp}
    wait until element is enabled    xpath${temp}
    input text    xpath${temp}  ${userName}


user enters the password
    [Arguments]    ${password}
    ${temp1}=   get password locator
    [Return]    ${temp1}
    wait until element is enabled    id${temp1}
    input text    id${temp1}  ${password}

Submit Login Button
    ${temp2}=    get loginButtonID locator
    [Return]    ${temp2}
    click button    xpath${temp2}

user is Navigated to login page
    ${temp3}=    get clickLoginLink
    [Return]    ${temp3}
    click link    xpath${temp3}

Title page is verified
    log to console  ${title}
    title should be     ${title}




