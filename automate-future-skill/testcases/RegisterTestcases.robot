*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/HomePageKeywords.robot
Resource        ../keywords/RegisterPageKeywords.robot
Variables       ../resources/config/config.yaml
Variables       ../resources/testdata/testdata.yaml
Suite Setup        Open Browser    ${baseUrl}    chrome
Suite Teardown     Close Browser

*** Test Cases ***
สมัครสมาชิกของ Future Skill
    When user login to future skill platform with ${emailRegis} and ${first_name} and ${last_name} and ${phone} and ${password} and ${confirmpassword} 
    When Wait until element is ready to read text  xpath=//h6[@class='text-center']    ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์
    Verify OTP Page Message