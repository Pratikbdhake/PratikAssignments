*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/HomeScreen.py
Variables    ../PageObjects/Men.py
Variables    ../PageObjects/Tees.py
Variables    ../PageObjects/AddToCart.py
Variables    ../PageObjects/CheckoutPage.py

*** Variables ***
${email}    pratik.blr2000@gmail.com
${FirstName}    Pratik
${LastName}     Dhake
${city}    Bangalore
${PINcode}  560076
${phoneNo}  9763824464
${address}  BTM,stage 2

*** Keywords ***
productSection
    mouse over    ${men}
    wait until element is visible    ${printedcotton}
    click element    ${printedcotton}
    title should be    Cotton Printed Tees – RDKLU
    click element    ${tees_12}

addToCart
    click element    ${sizebox}
    select from list by value    ${sizebox}     XL
    click button    ${addtocartbtn}

chekcoutItem
    wait until element is visible    ${checkoutbtn}
    click element    ${increaseitemquantitybtn}
    click button    ${checkoutbtn}

ShippingInformation
    input text  ${emailTxtBox}    ${email}
    input text    ${firstnametxtbox}    ${firstname}
    input text    ${lastnametxtbox}     ${lastname}
    input text    ${addresstxtbox}      ${address}
    input text    ${citytxtbox}     ${city}
    click element    ${statedropdown}
    select from list by value    ${statedropdown}   KA
    input text    ${pincodetxtbox}      ${pincode}
    input text    ${phonenotxtbox}      ${phoneno}
    sleep   3
    click element    ${continuetoshipbtn}
    select checkbox    ${emailmenewsandofferscheckbox}
    select checkbox    ${saveinfonxttimecheckbox}
    wait until element is visible    ${continuetopaymentbtn}
    sleep   5
    click button    ${continuetopaymentbtn}
    wait until element is visible    ${returntoshipping}
    sleep   3
    title should be    Payment - RDKLU - Checkout
    click element    ${returntoshipping}
    title should be    Shipping - RDKLU - Checkout