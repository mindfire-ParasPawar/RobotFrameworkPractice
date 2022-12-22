*** Settings ***
Library    SeleniumLibrary
Library    DateTime

*** Test Cases ***
First Test
    ${todayDate}=    Get Today Date
    ${earlyDate}=    Subtract Time From Date    ${todayDate}    5 days
    Log    ${earlyDate}
    
    
*** Keywords ***
Get Today Date    
    ${currentDate}=    Get Current Date
    [return]    ${currentDate}
    
    
    