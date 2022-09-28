*** Settings ***
Library           SeleniumLibrary

*** Keywords ***
the user opens the browser
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}

the user clicks the link
    [Arguments]    ${path}
    Click Element    xpath:${path}

the user input credentials
    [Arguments]    ${email}    ${password}
    Sleep    1s
    Input Text    name:newFormEmail    ${email}
    Sleep    1s
    Input Password    name:newFormPassword    ${password}

the user clicks the button
    [Arguments]    ${button}
    Sleep    2s
    Click Element    xpath:${button}

the user writes a message
    [Arguments]    ${textBox}    ${msg}
    Sleep    1s
    Input Text    xpath:${textBox}    ${msg}
    Sleep    1s

logout from tecDigital
    [Arguments]    ${button1}    ${button2}
    Sleep    2s
    Click Element    xpath:${button1}
    Sleep    2s
    Click Element    xpath:${button2}
    Sleep    2s
    Title Should Be    tecDigital | Ingresar
    Close Browser
