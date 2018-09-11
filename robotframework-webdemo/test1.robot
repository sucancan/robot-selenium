*** Settings ***
Documentation     A test suite containing tests related to invalid login.
...
...               测试登录
Test Teardown     ss
# 注释
Library           BuiltIn   
Library           DateTime      
Library           Screenshot


*** Variables ***
${tm}


#带参数的自定义关键字
*** Keywords ***
ss 
    Set Screenshot Directory    ./take_screens
    ${tm}       Get Current Date
    Take Screenshot     

print
    [Arguments]    ${username}    ${how}    
    ${tm}       Get Current Date
    Log To Console     hello ${username} good ${tm},${how}



*** Test Cases ***
test1
    print  username=xiaoming    how=aaa
    #ss 
