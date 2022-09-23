*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/Keywords.robot

*** Variables ***
${Browser_chrome}    chrome
${URL}        https://nb-0447:444/
${username}        j.doe
${password}        Password1#

*** Test Cases ***
TC-002-menue
    [tags]  Login
    [Documentation]      First Test for LAP in IRIS Project
    Open My Browser     ${URL}     ${Browser_chrome}    
    Login central server    ${username}        ${password}
    sleep      5
    
    
       
       
