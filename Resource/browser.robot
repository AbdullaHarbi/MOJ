*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${URL}      https://magento.softwaretestingboard.com/
${BROWSER}        Chrome

*** Keywords ***
Open the broswer
    Open Browser     ${URL}    ${BROWSER}
    Maximize Browser Window

Close the bowser
    Close Browser