*** Settings ***
Library          SeleniumLibrary
Variables        ../PageObjects/myAccountPage.py



*** Keywords ***
Click men section
    Click Element    ${btn_men}

Click men jacket
    Mouse Over    ${btn_men}
    Mouse Over    ${btn_men_tops}
    Click Element    ${btn_men_jacket}
