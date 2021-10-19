***Settings***
Resource            base.robot

Test Setup          New Session
Test Teardown       End Session

***Test Cases***
Login com Sucesso
    Go to                       ${url}/login
    Login with                  stark                           jarvis! 

    Should See Logged user      Tony Stark 

Senha Inválida
    [tags]                      password_error
    Go to                       ${url}/login
    Login with                  stark                            123456


    Should Contain Login Alert                                   Senha é invalida!

Usuário Não existe
    [tags]                      user_error
    Go to                       ${url}/login
    Login with                  TheoN                            jarvis! 

  
    Should Contain Login Alert                                   O usuário informado não está cadastrado!

***Keywords***
Login with
    [Arguments]                 ${uname}                            ${pass} 

    Input text                  css:input[name=username]            ${uname}
    Input text                  css:input[name=password]            ${pass}
    Click Element               class:btn-login

Should Contain Login Alert
    [Arguments]                 ${expect_message}

    ${message}                  Get WebElement                     id:flash
    Should Contain              ${message.text}                    expect_message

Should See Logged user 
    [Arguments]                 ${full_name}

    Page Should Contain         Olá, ${full_name}. Você acessou a área logada!


#   cmd to run the whole tests:  robot -d ./log test/login_forms.robot
#   CMD to run just test with TAGS:  robot -d ./log -i tagsname tests