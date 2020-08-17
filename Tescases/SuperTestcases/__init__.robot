*** Settings ***

Suite Setup    print the message
Suite Teardown   Print TearDown message
*** Variables ***


*** Keywords ***
Print the message
    log to console    this is from init file==>setup

Print TearDown message
    log to console    this is init file ==>Teardown


