*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${google}=          https://www.google.com/
${googleImages}=    https://www.google.com/imghp
${browser}=         Chrome
${tecImage}=        //*[@id="islrg"]/div[1]/div[3]/a[1]/div[1]/img


*** Test Cases ***
Search 'wall·e' on Google
    [Documentation]    Search 'wall·e' on Google Chrome
    [Tags]    usability
    Given The user opens    ${google}    ${browser}
    And The user searchs    wall·e
    Sleep    1s
    Then Page Should Contain    WALL·E - Wikipedia, la enciclopedia libre
    Close Browser

Search 'tec cartago' on Google images
    [Documentation]    Search 'tec cartago' on Google Images
    [Tags]    usability
    Given The user opens    ${googleImages}    ${browser}
    And The user searchs    tec cartago
    Sleep    1s
    Then Page Should Contain Image    ${tecImage}
    Close Browser


*** Keywords ***
The user opens
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}

The user searchs
    [Arguments]    ${query}
    Input Text    name:q    ${query}
    Press Keys    name:q    ENTER
