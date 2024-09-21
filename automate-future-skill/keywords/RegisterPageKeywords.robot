*** Settings ***
Library         SeleniumLibrary
Resource        CommonKeywords.robot

*** Keywords ***
When user login to future skill platform with ${email} and ${firstname} and ${lastname} and ${phone} and ${password} and ${confirmpassword}
    CommonKeywords.Wait until element is ready then click element  xpath=//button[text()="สมัครสมาชิก"]
    CommonKeywords.Wait until element is ready then input text    name=email   ${email}
    CommonKeywords.Wait until element is ready then input text    name=firstName  ${first_name}
    CommonKeywords.Wait until element is ready then input text    name=lastName  ${last_name}
    CommonKeywords.Wait until element is ready then input text    name=phoneNumber   ${phone}
    CommonKeywords.Wait until element is ready then input text    name=newPassword  ${password}
    CommonKeywords.Wait until element is ready then input text    name=confirmPassword  ${password}
    CommonKeywords.Wait until element is ready then click element    xpath=//input[@type="checkbox"]
    CommonKeywords.Wait until element is ready then click element    xpath=//button[text()="สมัครสมาชิก"]

Verify OTP Page Message
    CommonKeywords.Wait until page contains element then verify text    "ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์"