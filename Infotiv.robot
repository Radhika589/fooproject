*** Settings ***

Library          SeleniumLibrary
Library          DateTime
Resource         RSLab2keywords.robot
#Test Template   Invalid Login
Test Setup      Begin Web Test
Test Teardown   End Web Test

*** Variables ***

${url}           http://rental10.infotiv.net/
${BROWSER}       chrome
${about_url}     http://rental10.infotiv.net/webpage/html/gui/about.php
${home_url}      http://rental10.infotiv.net/webpage/html/gui/index.php


*** Test Cases ***

Verify Home Page Header
        [Documentation]                  Verification of the header
        [Tags]                           Test 1
        Load Page
        Verify Logo
        Verify Title
        Verify About
        Verify User Information Field

User Enters Differenet Combination Of Credentials
        [Documentation]                  Verifying invalid credentials
        [Tags]                           Test 2
        Load Page
        Enter Valid Email And Invalid Password
        Enter Invalid Email And Valid Password
        Enter Invalid Email And Invalid Password
        Entering Valid Email And Valid Password

Gherkin Syntax Test Case For Date Selection
        [Documentation]                  Selecting the dates for booking a car
        [Tags]                           Test 3
        Given From Date And To Date Selector
        When Select From And To Date And Click On Continue Button
        Then Car Details Page Should Be Displayed

Test case for checking invalid boundary value for card number
        [Documentation]                  Checking the invalid input of a card number
        [Tags]                           Test 4
        Load Page
        Entering Valid email and valid password
        Select From and To date and Click on Continue button
        Car Details Page Should be displayed
        Select the Make and the Passengers from the DropDown
        Testing Boundary Value for the Card Number 15 digits(invalid)

Test case for booking a car (long test case )
        [Documentation]                  Booking a car
        [Tags]                           Test 5
        Load Page
        Entering Valid email and valid password
        Select From and To date and Click on Continue button
        Car Details Page Should be displayed
        Select the Make and the Passengers from the DropDown
        Provides the Card details for payment

Page Navigation While Booking a Car (VG_testcase_Gherkin Syntax))
        [Documentation]                  Navigation of a page
        [Tags]                           Test 6
        Given User is on the confirm booking Page
        When User provides card details and click on continue button
        Then User directs to the booking confirmation page

