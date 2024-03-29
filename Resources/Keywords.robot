*** Settings ***
Library           SeleniumLibrary
Variables        ../PageObjects/Locators.py


*** Keywords ***
Open Browser and Login
    #[Arguments]        ${Url}    ${Browser}
    #Open Browser    ${Url}    ${Browser}
    Open Browser    https://nb-0447:444/    chrome
    Maximize Browser Window
    Input Text    ${txt_loginUserName}    j.doe
    Input Text    ${txt_loginPassword}    Password1#
    Click Element  ${btn_signIn}
    Title Should Be    CentralServer
    Element Should Be Visible  ${pruefen}  timeout=30
    sleep    30
    
Close My Browser
    Close Browser
    
Edit PatientDetails
    [Arguments]        ${F_name}        ${L_name}
    Click Element        ${PatientDetails}
    sleep    2
    Input Text    ${Firstname}    ${F_name}
    sleep    2
    Input Text    ${Lastname}    ${L_name}
    sleep    2
    Click Element  ${btn_save}
    