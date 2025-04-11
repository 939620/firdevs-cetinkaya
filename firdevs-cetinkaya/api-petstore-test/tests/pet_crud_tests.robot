*** Settings ***
Library           RequestsLibrary
Resource          ../resources/pet_keywords.robot
Suite Setup       Create Session    petstore    https://petstore.swagger.io/v2

*** Test Cases ***
Create A New Pet
    Create New Pet    123    "Fluffy"    "available"
    Status Should Be  200

Create And Get Pet
    Create New Pet    123    Fluffy    available
    Status Should Be    200
    Get Pet By ID    123
    Status Should Be    200
    
Update Pet
    Update Pet        123    "FluffyUpdated"    "sold"
    Status Should Be  200

Delete Pet
    Delete Pet        123
    Status Should Be  200
