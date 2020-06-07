*** Settings ***
Documentation         Executing Robot Framework Tests on Docker container
...
Library               Selenium2Library
Test Setup           Start Browser
Test Teardown        Close Browser

*** Variables ***
${SERVER}             https://www.google.com
${BROWSER}            chrome
${REMOTE_URL}         http://localhost:4546/wd/hub

*** Keywords ***
Start Browser
    [Documentation]   Start chrome browser on Selenium Grid
    Open Browser      ${SERVER}   ${BROWSER}   None    ${REMOTE_URL}
    Sleep   5s

*** Test Cases ***
Test Search Docker
    [Documentation]         Test Search Docker
    Input Text    q    docker
    Submit Form
    Wait Until Page Contains    Searches related to docker
    Sleep   5s

Test Check Page Title
    [Documentation]   Check the page title
    Title Should Be   Google
    Sleep   5s
