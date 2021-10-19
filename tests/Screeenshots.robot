***Settings***
Resource        base.robot
    
Test Setup           New Session      
Test Teardown        End Session    

***Variables***
${check_thor}         id:thor
${check_ironman}      css:input[value='iron-man']
${the_avengers}       xpath://*[@id='checkboxes']/input[4]

***Test Cases***
Marcando com ID             
    Go to                           ${url}/checkboxes
    Select checkbox                 ${check_thor}
    Checkbox Should be Selected     ${check_thor}                                    
Marcando com CSS Selector
    [tags]      iron_man
    Go to                           ${url}/checkboxes
    Select checkbox                 ${check_ironman}
    Checkbox Should be Selected     ${check_ironman}
  
Marcando com XPath
    [tags]      avengers
    Go to                           ${url}/checkboxes
    Select checkbox                 ${the_avengers}
    Checkbox Should be Selected     ${the_avengers}


