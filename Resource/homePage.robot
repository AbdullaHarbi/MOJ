*** Settings ***
Library     SeleniumLibrary
Variables       ../PageObjects/homePage.py


*** Keywords ***
Clcik create account
    Click Element       ${btn_createAccount}

Click sign in
    Click Element   ${btn_signIn}

Enter search
    [Arguments]   ${search}
    Input Text    ${input_search}    ${search}

Click search
    Click Element   ${btn_search}

Verify successfull search
    Wait Until Element Is Visible    ${txt_meta}
    Element Should Be Visible    ${txt_meta}