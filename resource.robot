*** Settings ***

Library     SeleniumLibrary

***Variables***

${url}                 https://demoqa.com/automation-practice-form
${nameFirst}           firstName
${nameLast}            lastName
${email}               userEmail



*** Keywords ***

I access the site

    Open Browser                    browser=chrome
    Maximize Browser Window
    Go To                            ${url}
    Wait Until Element Is Visible    ${nameFirst}


Fill the form

    Input Text    ${nameFirst}   Liv
    Input Text    ${nameLast}    Tyler
    Input Text    ${email}       liv_tyler@gmail.com
    Close Browser


