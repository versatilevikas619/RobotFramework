*** Settings ***

Resource    ../../Resouces/login.robot


*** Variables ***


*** Keywords ***


*** Test Cases ***
Login verification
    Given user is Navigated to login page
    When User enters the user name  Ramnareshra
    And user enters the password  aayi ho dada
    And Submit Login Button
    Then Title page is verified





