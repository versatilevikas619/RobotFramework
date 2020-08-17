*** Settings ***
Library    Collections

*** Variables ***

*** Test Cases ***
mokkatest
#create a list
#print the length of the list


    @{list1}    create list    Ram  aam     kahat   hai
     FOR   ${i}    IN    ${list1}
      log to console    ${i}
      END

     FOR    ${J}    IN RANGE    1   100
     LOG TO CONSOLE    ${J}
     END

#    log to console    ${list1}
#    ${var1}    get length    ${list1}
#    log to console    ${var1}
#    ${var2}     get from list    ${list1}   2
#    log to console    ${var2}
#    ${var3}    set variable    55
#    log to console    value is ${var3}


