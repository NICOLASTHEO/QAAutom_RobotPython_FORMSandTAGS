***Settings***
Resource                base.robot

Test Setup              New Session
Test Teardown           End Session

***Test Cases***

Verifica do valor ao informar o número da linha
    Go to                               ${url}/tables
    Table Row Should Contain            id:actors           1           @robertdowneyjr

Descobre a linha pelo texto chave e valida os demais valores
    Go to               ${url}/tables
    ${target}=          Get WebElement              xpath:.//tr[contains(., '@chadwickboseman')]
    log                 ${target.text}
    Log to Console      ${target.text}
    Should Contain      ${target.text}              $ 700.000
    Should Contain      ${target.text}              Pantera Negra