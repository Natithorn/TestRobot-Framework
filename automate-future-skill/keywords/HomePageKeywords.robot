*** Settings ***
Library         SeleniumLibrary
Resource        CommonKeywords.robot

*** Keywords ***
future skill should display home page and display message as "${expected_message}"
    CommonKeywords.Wait until page contains element then verify text    ${expected_message}

user logout from future skill platform
    CommonKeywords.Wait until element is ready then click element    xpath=//button[@aria-haspopup="menu"]
    CommonKeywords.Wait until element is ready then click element    xpath=//div[contains(text(),"ออกจากระบบ")]