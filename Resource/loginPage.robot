*** Settings ***
Library          SeleniumLibrary
Variables        ../PageObjects/homePage.py
Variables        ../PageObjects/LoginPage.py



*** Keywords ***
Enter login email
    [Arguments]   ${email}
    Input Text    ${input_Login_email}   ${email}

Enter login password
    [Arguments]   ${password}
    Input Text    ${input_Login_password}   ${password}

click login submit
    Click Element    ${btn_Login_submit_login}

Verify login successfully
    [Arguments]   ${welcome}
    Wait Until Element Is Visible    ${txt_Login_welcomeAfterLogin}
    Element Should Contain    ${txt_Login_welcomeAfterLogin}    ${welcome}


