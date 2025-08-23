*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Browser    https://the-internet.herokuapp.com/login    chrome
Suite Teardown    Close Browser
Test Teardown     Capture Page Screenshot

*** Test Cases ***
Valid Login
    Input Text    id=username    tomsmith
    Input Text    id=password    SuperSecretPassword!
    Click Button  css=button.radius
    Wait Until Page Contains    You logged into a secure area!
