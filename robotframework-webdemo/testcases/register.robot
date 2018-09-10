*** Settings ***
Documentation        注册页面

Test Teardown     Close Browser

Resource          resource.robot


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
      