*** Settings ***
Library    SeleniumLibrary

Suite Setup    Open and Maximize browser
Suite Teardown  close browser
*** Variables ***
${browser}  chrome
${url}  https://www.thetestingworld.com/



*** Keywords ***
Open and Maximize browser
    open browser    ${url}    ${browser}
    maximize browser window

