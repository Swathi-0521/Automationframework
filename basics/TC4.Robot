*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***

Select value from Drop Down
    [Tags]  smoke
    Open Browser   https://demo.automationtesting.in/Register.html  chrome
    select from List by Index   Skills   4
    click element   id:msdd
    click element   xpath://a[text()='English']
    sleep   5

Verify the Drang and Drop
    [Tags]  regression
    Open Browser    https://jqueryui.com/droppable/     chrome
    select frame    xpath://*[@id="content"]/iframe
    Drag and Drop   id:draggable     id:droppable
    Capture page Screenshot





*** Keywords ***

