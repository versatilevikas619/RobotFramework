*** Settings ***
Library  SeleniumLibrary
documentation    this is just to see how documentation works

*** Variables ***
${url}  https://www.facebook.com/
#${browser}  Chrome
${email_button_xpath}
${email}    versatilevikas@hotmail.com
${password_xapth}   css:#pass
${password}     9852135029ma


*** Test Cases ***
Login Scenario for FaceBook
    open browser    ${url}    Chrome
    maximize browser window
    set selenium speed    1
    select from list by value  name:birthday_day   4


    #Enter Credententials    ${email}     ${password}
    #click button    xpath://input[@value='Log In']
    #click button    xpath://i[@class='hu5pjgll lzf7d6o1 sp_-69RjdrrvoB_1_5x sx_683aac']
    #click button    xpath://span[text()='Log Out']
    #click link    xpath://a[contains(text(),'account?')]
    close browser

*** Keywords ***
Enter Credententials
    [Arguments]   ${email}     ${password}
    input text    xpath://input[@type='email']  ${email}
    input text    css:#pass      ${password}
