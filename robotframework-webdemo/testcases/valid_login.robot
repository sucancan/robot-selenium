*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Test Teardown     Close Browser
Resource          resource.robot

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Input Username    testuser1
    Input Password    123456
    Submit Credentials
    Welcome Page Should Be Open
 
