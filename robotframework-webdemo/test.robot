*** Settings ***
Documentation  A test suite containing tests related to invalid login.
...              测试登录，都是注释，用...
...               
Library           Selenium2Library

#定义变量
*** Variables ***
${url}  http://118.31.19.120:3000




#用户自定义关键字
*** Keywords ***
用户登录
    Open Browser   url=${url}  browser=chrome
    Maximize Browser Window
    Click Element  link:登录                   
    Input Text     id:name                     testuser1
    Input Text     id:pass                     123456
    Close All Browsers







*** Test Cases ***  
open login
    用户登录


open register
    用户登录

发帖
    用户登录

    