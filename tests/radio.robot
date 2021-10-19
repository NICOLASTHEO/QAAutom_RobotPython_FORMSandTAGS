***Settings***
Resource        base.robot

Test Setup           New Session      
Test Teardown        End Session

***Test Cases***
Setting by Id                 
    Go to                               ${url}/radios
    Select Radio Button                 movies              cap 
    Radio Button Should Be Set to       movies              cap  

Setting by Value               
    Go to                               ${url}/radios
    Select Radio Button                 movies              black-panther 
    Radio Button Should Be Set to       movies              black-panther     
