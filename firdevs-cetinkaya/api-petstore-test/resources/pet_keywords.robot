*** Variables ***
# No variables are needed here for now

*** Keywords ***
Create New Pet
    [Arguments]    ${id}    ${name}    ${status}
    &{headers}=    Create Dictionary    Content-Type=application/json
    ${body}=    Create Dictionary    id=${id}    name=${name}    status=${status}
    ${response}=    POST On Session    petstore    /pet    json=${body}    headers=&{headers}
    Set Suite Variable    ${response}

Get Pet By ID
    [Arguments]    ${id}
    ${response}=    GET On Session    petstore    /pet/${id}
    Set Suite Variable    ${response}

Update Pet
    [Arguments]    ${id}    ${name}    ${status}
    &{headers}=    Create Dictionary    Content-Type=application/json
    ${body}=    Create Dictionary    id=${id}    name=${name}    status=${status}
    ${response}=    PUT On Session    petstore    /pet    json=${body}    headers=&{headers}
    Set Suite Variable    ${response}

Delete Pet
    [Arguments]    ${id}
    ${response}=    DELETE On Session    petstore    /pet/${id}
    Set Suite Variable    ${response}

Status Should Be
    [Arguments]    ${expected_status}
    Should Be Equal As Integers    ${response.status_code}    ${expected_status}
