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

Show courses
    [Documentation]    Show the current courses of the semester 'IIS2022'
    [Tags]    usability
    Given Title Should Be    Mi portal
    And the user clicks the button    ${showCourses}
    Then Page Should Contain    SEMESTRE 2 2022

Access SQA portal
    [Documentation]    Access to the Software Quality Assurance course portal
    [Tags]    usability
    Given Page Should Contain    SEMESTRE 2 2022
    And the user clicks the button    ${sqa}
    Then Title Should Be    Aseguramiento De La Calidad Del Software GR 20

Access to the email form
    [Documentation]    Access to the email form pannel
    [Tags]    usability
    Given Title Should Be    Aseguramiento De La Calidad Del Software GR 20
    And the user clicks the button    ${teacherEmail}
    Then Title Should Be    Sitio Principal
    And Element Text Should Be    xpath:${subjectField}    ${empty}

Write the subject
    [Documentation]    Writes text on the Subject text field
    [Tags]    usability, valid
    Given Title Should Be    Sitio Principal
    And Element Text Should Be    xpath:${subjectField}    ${empty}
    Then the user writes a message    ${subjectField}    ${subject}

Write the body
    [Documentation]    Writes text on the Body text field
    [Tags]    usability, valid
    Given Title Should Be    Sitio Principal
    And Element Text Should Be    xpath:${bodyField}    ${empty}
    Then the user writes a message    ${bodyField}    ${body}

Sends the email
    Given Title Should Be    Sitio Principal
    And the user clicks the button    ${sendEmail}
    Sleep    3s
    Then Title Should Be    Aseguramiento De La Calidad Del Software GR 20

Close the browser
    Sleep    3s
    Close Browser
