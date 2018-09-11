*** Settings ***
Documentation   删帖测试
Suite Setup       Open Browser To Login Page
Suite Teardown    Close Browser
#截频操作
Test Teardown     Get screenshot
Resource          resource.robot


*** Test Cases ***
删帖
    Login input
    Click Element   link:招聘
    Click Element   xpath://*[@id ="topic_list"]/div[1]/div/a
    Click Element   xpath://*[@id ="manage_topic"]/a[2]/i         #点击删除按钮
    Handle Alert       #接受弹出框
    Welcome Page Should Be Open     #验证删帖成功，回到首页


