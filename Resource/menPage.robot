*** Settings ***
Library          SeleniumLibrary
Variables        ../PageObjects/menPage.py


*** Keywords ***

click top size
    Wait Until Element Is Visible    ${size}
    Click Element    ${size}

click top color
    Wait Until Element Is Visible    ${color}
    Click Element    ${color}

click add to cart
    sleep   5s
    Wait Until Element Is Visible    ${add_to_cart}
    Click Element    ${add_to_cart}

click shopping cart
    Wait Until Element Is Visible    ${shopping_cart}
    Click Element    ${shopping_cart}

Verify success item added
    Wait Until Element Is Visible    ${shopping_cart}
    Element Should Be Visible   ${shopping_cart}