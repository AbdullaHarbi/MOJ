*** Settings ***
Library          SeleniumLibrary
Variables        ../PageObjects/shoppingCartPage.py


*** Keywords ***

click Proceed to chechout
    Wait Until Element Is Visible    ${btn_proceed_to_checkout}
    Click Element    ${btn_proceed_to_checkout}

check radio button
    Sleep    5s
    Wait Until Element Is Visible    ${radio_btn}
    Click Element    ${radio_btn}

click next
    Sleep   5s
    Wait Until Element Is Visible    ${btn_next}
    Click Element    ${btn_next}

click place order
    Sleep  7s
    Wait Until Element Is Visible     ${btn_place_order}
    Click Element    ${btn_place_order}


Verify success message for purchace
    [Arguments]   ${purchase_success_message}
    Wait Until Element Is Visible    ${txt_message}
    Element Should Contain    ${txt_message}    ${purchase_success_message}
