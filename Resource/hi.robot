*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Variables

*** Variables ***
${LOGIN URL}      https://magento.softwaretestingboard.com/
${BROWSER}        Chrome
${FirstName}      Abdullah
${LastName}       Alharbi
${Email}          abdllh.alhrb@gmail.com
${Password}          Aa123456789@



*** Test Cases ***
Valid Login
    Open Browser     ${LOGIN URL}    ${BROWSER}
    Click Element    (//a[contains(text(),'Create an Account')])[1]
    Input Text    //input[@id="firstname"]    ${FirstName}
    Input Text    //input[@id="lastname"]    ${LastName}
    Input Text    //input[@id="email_address"]    ${Email}
    Input Text    //input[@id="password"]    ${Password}
    Input Text    //input[@id="password-confirmation"]    ${Password}
    Click Element    //button[@title="Create an Account"]
    Element Should Contain    locator    expected
    Sleep    5s
    Close Browser