*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
Resource    ../Resources/BuyProduct_resources.robot
Test Setup      LoginTest
Test Teardown    CloseBrowser


*** Test Cases ***
BuyingProduct
    productSection
    addToCart
    chekcoutItem
    shippinginformation