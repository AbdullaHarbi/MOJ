*** Settings ***
Library     SeleniumLibrary
Resource      ../Resource/registrationPage.robot
Resource      ../Resource/loginPage.robot
Resource      ../Resource/browser.robot
Resource      ../Resource/homePage.robot
Resource      ../Resource/myAccountPage.robot
Resource      ../Resource/menPage.robot
Resource      ../Resource/shoppingCartPage.robot


*** Variables ***
${FirstName}            Abdullah
${LastName}             Alharbi
${registration_Email}   a1bdlr4l46w5454h.a2lhr10b@gmail.com
${Email}                abdllh.a2lhr10b@gmail.com
${Password}             Aa123456789@
${myAccountPage}        My Account
${welcome}              Welcome
${success_purchace}     Thank you for your purchase!
${search_keyword}       Nike

*** Test Cases ***

register
   Open the broswer
   Clcik create account
   Enter FirstName      ${FirstName}
   Enter LastName    ${LastName}
   Enter email    ${registration_Email}
   Enter Paswword    ${Password}
   Enter Confirmation Password    ${Password}
   Click Create An Account
   Verify successfull create account    ${myAccountPage}
   Close the bowser
   Open the broswer
   Click sign in
   Enter login email     ${registration_Email}
   Enter login password   ${Password}
   click login submit
   Verify login successfully    ${welcome}
   Close the bowser

add to cart
    Open the broswer
    Click sign in
    Enter login email     ${Email}
    Enter login password   ${Password}
    click login submit
    Verify login successfully    ${welcome}
    Click men jacket
    click top size
    click top color
    click add to cart
    Verify success item added
    Close the bowser

add to cart and submit
    Open the broswer
    Click sign in
    Enter login email     ${Email}
    Enter login password   ${Password}
    click login submit
    Verify login successfully    ${welcome}
    Click men jacket
    click top size
    click top color
    click add to cart
    click shopping cart 
    click Proceed to chechout
    check radio button
    click next
    click place order
    Verify success message for purchace    ${success_purchace}
    Close the bowser

search
    Open the broswer
    Click sign in
    Enter login email     ${Email}
    Enter login password   ${Password}
    click login submit
    Verify login successfully    ${welcome}
    Enter search    ${search_keyword}
    Click search
    Verify successfull search
    Close the bowser