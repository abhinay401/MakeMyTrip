*** Settings ***
Documentation     Verify hotel page items

Resource         ../Resources/resourcefile.robot
Variables        ../Locators/Locators.py
Variables        ../Data/Data.py

Suite Setup      Open Browser And Application   ${hotel_page_url}   ${hotel_page_title}
Suite Teardown   Close Browser And Application

*** Test cases ***

Verify Application Task bar items Fields
     [Documentation]   Verif application hotel page items.

     Verify List Fields Using Locator  ${hotel_items_locator}  ${hotel_page_items}


verify Hotel Booking Types
     [Documentation]   Verif hotel booking items.

     Verify List Fields Using Locator  ${booking_types_locator}  ${booking_types}


Verify Able To Navigate Flight Page
     [Documentation]  Verify able to nvaigate flight page

     Click Element  ${flight_page_navigate_locator}
     ${url}=   Get Location
     Should Be Equal   ${url}   ${flight_page_url}


Verify Able To Navigate Railway Page
     [Documentation]  Verify navigate from flight to railway page.

     Click Element  ${railway_page_navigate_locator}
     ${url}=   Get Location
     Should Be Equal   ${url}   ${railways_page_url}


Verify Able To Navigate Railway Page
     [Documentation]  Verify navigate from flight to railway page.

     Click Element  ${railway_page_navigate_locator}
     ${url}=   Get Location
     Should Be Equal   ${url}   ${railways_page_url}
