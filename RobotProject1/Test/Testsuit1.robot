*** Settings ***
Library    SeleniumLibrary  

Suite Setup     Log    I am inside Test Suite Setup 
Suite Teardown   Log    Iam inside Test Suite Teardown    
Test Setup        Log    I am inside Test Setup 
Test Teardown          Log    I am inside Test Teardown

Default Tags    sanity    


*** Test Cases ***
MyFirstTest
    [Tags]    smoke
       Log    Hello World...    
       
MySecondTest
       Log    I am inside 2nd test.
       Set Tags    regresion1
       Remove Tags    regresion1
       
MyThirdTest
       Log    I am inside 3rd test. 
       
MyForthTest
       Log    I am inside 4th test.  
       
# FirstSeleniumTest
    # Open Browser    https://google.com    chrome    
    # Set Browser Implicit Wait    2
    # Input Text    name=q    AUTOMATION STEP BY STEP    
    # Press Keys    name=q     ENTER
    # # Click Button    name=btnk
    # Sleep    5    
    # Close Browser
    



# SampleLoginTesst
    # [Documentation]    This is sample login test
    # Open Browser     ${URL}      chrome
    # Set Browser Implicit Wait    5
    # LoginKW
    # Click Element    id=welcome
    # Click Element    link=Logout
    # Close Browser
    # Log    Testcompleted
    # Log    This test was executed by %{username} on %{os}    
    




# SampleLoginTest2
    # [Documentation]    The sample login test for facebook
    # Open Browser    https://www.facebook.com/    chrome
    # Set Browser Implicit Wait    10
    # Input Text    id=email    8767328572
    # Input Password    id=pass    lestwins
    # Press Keys    id=loginbutton     ENTER
    # Click Element    id=userNavigationLabel
    # Sleep    10    
    # Close Browser
    # Log    TestCompleted 
    

*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
@{CREDETIALS}    Admin    admin123
&{LOGINDATA}    username=Admin    password=admin123

*** Keywords ***
LoginKW
         Input Text    id=txtUsername    @{CREDETIALS}[0] 
         Input Password    id=txtPassword   &{LOGINDATA}[password]       
         Click Button    id=btnLogin   
               
    
    