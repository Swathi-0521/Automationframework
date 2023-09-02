*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${UserName}     demo
${Password}     demo
${homeurl}      https://www.demoblaze.com/index.html
${SignIn}       https://demo.automationtesting.in/SignIn.html
*** Test Cases ***
Launch Login Page
    [Tags]  smoke
    Launch an application  ${homeurl}
    Click Element   id:login2
To Check whether user is able to login with Valid user credentials
    [Tags]  regression
    Swathi
    Click Element   id:login2
    Input Text      id:loginusername    ${UserName}
    Input Text      id:loginpassword    ${Password}
    Click Element   xpath://*[@id="logInModal"]/div/div/div[3]/button[2]
    Wait Until Element Is Visible   id:logout2
    Element Should be Visible   id:nameofuser
Verify Whether User is able to access the Home or Landing page
    Swathi
    Element Text Should Be  id:cat   CATEGORIES
Verify User is able to navigate to Sign in functionality
    Launch an application  ${SignIn}
lAUNCH ana google application
Launch an application  hhtps://www.google.com
*** Keywords ***
Swathi
    Open Browser    https://www.demoblaze.com/      chrome
Launch an application
    [Arguments]    ${url}
    Open Browser   ${url}    chrome



