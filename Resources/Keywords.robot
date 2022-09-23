*** Settings ***
Library           SeleniumLibrary
Variables        ../PageObjects/Locators.py

*** Keywords ***
Open My Browser
    [Arguments]        ${Url}    ${Browser}
    Open Browser    ${Url}    ${Browser}
    Maximize Browser Window
    
Login central server
    [Arguments]        ${username}        ${password}
    Input Text    ${txt_loginUserName}    ${username}
    Input Text    ${txt_loginPassword}    ${password}
    Click Element  ${btn_signIn}
    Title Should Be    CentralServer
    Element Should Be Visible  ${pruefen}  timeout=30
    sleep    30
    Close Browser    