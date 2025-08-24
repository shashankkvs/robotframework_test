*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Browser    https://the-internet.herokuapp.com/login    chrome    options=add_argument("--no-sandbox")    options=add_argument("--disable-dev-shm-usage")    options=add_argument("--user-data-dir=/tmp/unique-profile")
Suite Teardown    Close Browser
Test Teardown     Capture Page Screenshot

*** Test Cases ***
Valid Login
    Input Text    id=username    tomsmith
    Input Text    id=password    SuperSecretPassword!
    Click Button  css=button.radius
    Wait Until Page Contains    You logged into a secure area!
