*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Login.py
Variables    ../PageObjects/HomeScreen.py

*** Variables ***
${url}      https://www.rdklu.com/collections/mens
${browser}      firefox
${email}        pratik.blr2000@gmail.com
${password}     Password#422

*** Keywords ***
LoginTest
    open browser    ${url}  ${browser}
    maximize browser window
# #   click link    ${accounticon}
#    wait until element is visible    ${customeremail}
#    input text    ${customeremail}      ${email}
#    input text    ${customerpassword}       ${password}
#    click button    ${signinbtn}
#    sleep   30

CloseBrowser
    close all browsers