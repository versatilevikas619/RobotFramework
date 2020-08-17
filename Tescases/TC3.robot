*** Settings ***
Library    SeleniumLibrary

Resource    ../Resouces/resource1.robot
#Test Setup    open and maximize browser   ${url}    ${browser}
#Test Teardown    close browser

*** Variables ***
${url}  https://www.thetestingworld.com/
${browser}  Chrome
${login_link}   xpath://a[@href='/index.php?option=com_users&view=login&Itemid=587']
${user_name}    xpath://input[@name='username']
${user_pass}    id:password
${SheetName}    Sheet3

*** Test Cases ***

Example-One
    click link    ${login_link}
    wait until element is visible    ${user_name}

    ${row}=    find number of rows    ${SheetName}

    FOR    ${i}    IN RANGE   2    ${row}+1
            ${cellValue}=   Read Data from Excel    ${SheetName}    ${i}    1
            log to console    ${cellValue}
            input text    ${user_name}     ${cellValue}
            ${password}=   Read Data from Excel    ${SheetName}    ${i}    2
            input text    ${user_pass}      ${password}
            click button    xpath://button[@type='submit']
            select checkbox    id:remember
            checkbox should be selected     id:remember
            unselect checkbox   id:remember
            checkbox should not be selected     id:remember
            title should be    Login
            sleep   3
            END




#    ==================


#Example-two
#    click link    ${login_link}
#    set selenium timeout    10
#    wait until element is visible    ${user_name}
#    input text    ${user_name}     Kumar
#    input text    ${user_pass}      vikas
#    select checkbox    id:remember
#    checkbox should be selected     id:remember
#    unselect checkbox   id:remember
#    checkbox should not be selected     id:remember
#    ${var3}=    get title
#    log    title obtained from the web is ${var3}
#    title should be    Login
#
#
#
