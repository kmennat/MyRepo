*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/Keywords.robot


Test Setup       Open Browser and Login  
Test Teardown    Close My Browser

*** Variables ***
${Browser_chrome}    chrome
${URL}        https://nb-0447:444/
${username}        j.doe
${password}        Password1#

*** Test Cases ***
TC-002-menue
    [tags]  Menue
    [Documentation]      First Test for LAP in IRIS Project
    
    sleep      5
    
    
       
       
