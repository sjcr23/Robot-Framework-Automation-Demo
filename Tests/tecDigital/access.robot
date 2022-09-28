*** Settings ***
Resource    ../Resources/credentials.resource
Resource    ../Resources/variables.resource
Resource    ../Resources/keywords.resource


*** Test Cases ***
Login with valid credentials
    [Documentation]    Access to tecDigital with valid credentials
    [Tags]    regression, valid
    Given the user opens the browser    ${tecDigital}    ${browser}
    When the user input credentials    ${email}    ${password}
    And the user clicks the button    ${login}
    Sleep    3s
    Then Title Should Be    Mi portal
    And logout from tecDigital    ${menuIcon}    ${logout}

Login with invalid credentials
    [Documentation]    Access to tecDigital with invalid credentials
    [Tags]    regression, valid
    Given the user opens the browser    ${tecDigital}    ${browser}
    When the user input credentials    f.ugaldegreen@estudiantec.cr    "el pepe"
    And the user clicks the button    ${login}
    Sleep    2s
    Then Title Should Be    tecDigital | Ingresar
    Close Browser
