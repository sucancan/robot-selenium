*** Settings ***
Documentation   发帖测试----------未完成
Suite Setup       Open Browser To Login Page
Suite Teardown    Close Browser
#截频操作
Test Teardown     Get screenshot
Resource          resource.robot


*** Test Cases ***
发帖
    Login input
    Click Element   css:.span-success   #发布话题
    Select From List By Value   id:tab-value    job    #选择招聘版块
    Input Text  id:title    招聘自动化测试一人lalalala
    Click Element   css:.CodeMirror-scroll
    Input Text  css:.CodeMirror-scroll   要求：xxx,经验：xxx
    Submit Credentials
    Page Should Contain     发布于


