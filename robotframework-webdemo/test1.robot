*** Settings ***
Documentation     A test suite containing tests related to invalid login.
...
...               测试登录
# 注释
Library           BuiltIn

# 带参数的自定义关键字
*** Keywords ***
print
    [Arguments]    ${username}      ${time}     ${how}=aaa
    Log To Console     hello ${username} good ${time},${how}


*** Test Cases ***
test1
    print  username=xiaoming    time=a