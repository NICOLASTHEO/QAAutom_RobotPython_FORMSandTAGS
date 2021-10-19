***Settings***
Resource             base.robot

Test Setup           New Session      
Test Teardown        End Session

***Test Cases***
Selection by text and validate by value
    Go to                           ${url}/dropdown
    select from list by label       class:avenger-list             Scott Lang
    ${selected}=                    Get Selected List Value        class:avenger-list
    Should be equal                 ${selected}                     7
Selection for Value and validate by text
    Go to                           ${url}/dropdown
    select from list by Value       id: dropdown                    4
    ${selected}=                    Get Selected List Label        id:dropdown        
    Should be equal                 ${selected}                     Natasha Romanoff       

    #cmd to run: robot -d ./log tests/select.robot      