*** Settings ***
Library          SeleniumLibrary
Variables        ../PageObjects/registrationPage.py
Variables        ../PageObjects/myAccountPage.py


*** Keywords ***
Enter FirstName
    [Arguments]   ${FirstName}
    Input Text    ${input_registration_firstName}   ${FirstName}

Enter LastName
    [Arguments]   ${LastName}
    Input Text    ${input_registration_lastName}    ${LastName}

Enter email
    [Arguments]   ${registration_Email}
    Input Text    ${input_registration_email}    ${registration_Email}

Enter Paswword
    [Arguments]   ${Password}
    Input Text    ${input_registration_password}    ${Password}

Enter Confirmation Password
    [Arguments]   ${Password}
    Input Text    ${input_registration_confirmationPassword}    ${Password}

Click Create An Account
    Click Element    ${btn_registration_createAnAccount}

Verify successfull create account
    [Arguments]   ${myAccountPage}
    Element Should Contain    ${txt_registration_myAccount}    ${myAccountPage}

