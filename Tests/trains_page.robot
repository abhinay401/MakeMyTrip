*** Settings ***
Documentation     Verify railway page items

Resource         ../Resources/resourcefile.robot
Variables        ../Locators/Locators.py
Variables        ../Data/Data.py

Suite Setup      Open Browser And Application  ${railways_page_url}   ${railways_page_title}
Suite Teardown   Close Browser And Application

*** Test cases ***

Verify Able To Navigate Hotel Page
     [Documentation]  Verify navigate from flight to hotels page.

     Click Element  ${hotel_page_navigate_locator}
     ${url}=   Get Location
     Should Be Equal   ${url}   ${hotel_page_url}


Verify Able To Navigate Flight Page
     [Documentation]  Verify able to nvaigate flight page

     Click Element  ${flight_page_navigate_locator}
     ${url}=   Get Location
     Should Be Equal   ${url}   ${flight_page_url}
