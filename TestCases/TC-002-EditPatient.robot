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
${F_name}             Breast1  
${L_name}        TEST     

*** Test Cases ***
TC-001-Login
    [tags]  Login
    [Documentation]      First Test for LAP in IRIS Project
    sleep    5
    Click Element  ${EditPatient}
    sleep    5
    Input Text    ${Firstname}    ${F_name}
    sleep    3
    Input Text    ${Lastname}    ${L_name}
    sleep    3
    Click Element  ${btn_save}
    Log To Console    Test ist fertig
    sleep    5