*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://demo.automationtesting.in/Register.html
${browser}  Chrome

*** Test Cases ***
Check whether user is able to navigating to Register page
    Open Browser    ${URL}    ${browser}
Check whether user is able to navigate to home page
    Open Browser    ${URL}    ${browser}
    Click Element   xpath://*[@id="header"]/nav/div/div[2]/ul/li[1]/a
Check user is able to Sign In
    Open Browser    ${URL}   Chrome
    sleep   5
    Click Element   xpath://*[@id="header"]/nav/div/div[2]/ul/li[1]/a
    sleep   5
    Click Element   id:btn1
    Input Text  xpath:/html/body/div/div/div[2]/input   abc@gmail.com
    Input Text  xpath:/html/body/div/div/div[2]/input   abc123
    Click Element   id:enterbtn



*** Keywords ***

