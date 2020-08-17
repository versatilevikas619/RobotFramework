*** Settings ***
Library    SeleniumLibrary

Library    ../ExternalKeywords/sample.py

Library    ../ExternalKeywords/sample.py

*** Variables ***


*** Keywords ***
open and maximize browser
    [Arguments]    ${url}    ${browser}
    open browser    ${url}  ${browser}
    maximize browser window

find number of rows
    [Arguments]    ${SheetName}
    ${row}=     FindMaxRow    ${SheetName}
    [Return]    ${row}

Read Data from Excel
    [Arguments]    ${SheetName}    ${row}    ${col}
    ${cellValue}    ReadData    ${SheetName}    ${row}    ${col}
    [Return]    ${cellValue}


