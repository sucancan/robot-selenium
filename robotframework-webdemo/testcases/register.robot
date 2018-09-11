*** Settings ***
Documentation        注册页面
Suite Teardown    Close Browser
Test Setup        
Test Teardown     Get screenshot
Resource          resource.robot    Screenshot  


*** Test Cases ***
register
    Open Browser To Signup Page
    Input registername      12345
    Input registerpsw       12345
    Input confirmpsw        12345
    Input e-mail            ddd@qq.com

#登录页面和注册页面的提交按钮class一样，暂用同一个
    Submit Credentials   
    Page Should Contain     已被使用。
      