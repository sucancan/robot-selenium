*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Suite Setup       Open Browser To Login Page
Suite Teardown    Close Browser
#截频操作
Test Teardown     Get screenshot
Resource          resource.robot

*** Test Cases ***
Login
    Login input
 
