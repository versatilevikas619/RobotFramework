*** Settings ***
resource    ../../Resouces/resource1.robot
Suite Setup         sepaerate Test suite
*** Variables ***


*** Test Cases ***
Printing from acctual testcase File
    log to console    printing from test case
    Log something

*** Keywords ***
sepaerate Test suite
    log to console    this is sepearte test suite======>>



