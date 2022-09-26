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
${L_name}        TEST1    

*** Test Cases ***
TC-002 Edit Patien
    [tags]  Patient Data
    [Documentation]      TA for LAP in IRIS Project
    Edit PatientDetails   ${F_name}    ${L_name}
    