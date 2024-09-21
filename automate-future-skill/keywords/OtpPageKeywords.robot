*** Settings ***
Library         SeleniumLibrary
Resource        CommonKeywords.robot

*** Keywords ***
verify_otp_page_message
    CommonKeywords.Wait until page contains element then verify text    "ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์"
