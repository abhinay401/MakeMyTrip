*** Settings ***
Documentation     Verify fligts page items

Resource         ../Resources/resourcefile.robot
Variables        ../Locators/Locators.py
Variables        ../Data/Data.py

Suite Setup      Open Browser And Application
Suite Teardown   Close Browser And Application

*** Test cases ***

Verify Application Task bar items Fields
     [Documentation]   Verif application task bar items.

     Verify List Fields Using Locator   locator=${menus_locator}  fields=${items}
     Element Text Should Be   ${charter_flights_locator}  ${flight_menu_text}


Veriy Trip Types
      [Documentation]  Verify trip type locatrors with text.

      Element Text Should Be  ${oneway_trip_locator}   ONEWAY
      Element Text Should Be  ${round_trip_locator}  ROUND TRIP
      Element Text Should Be   ${multi_city_trip_locator}  MULTI CITY


Verify Able To Navigate Hotel Page
     [Documentation]  Verify navigate from flight to hotels page.

     Click Element  ${hotel_page_navigate_locator}
     ${url}=   Get Location
     Should Be Equal   ${url}   ${hotel_page_url}


Verify Able To Navigate Railway Page
     [Documentation]  Verify navigate from flight to railway page.

     Click Element  ${railway_page_navigate_locator}
     ${url}=   Get Location
     Should Be Equal   ${url}   ${railways_page_url}


Verify Login/Create_Accoaunt Button
     [Documentation]  Verify login button text.

     Element Text Should Be  ${login_button_locator}   ${login_button_text}
     Click Element    ${login_button_locator}
     Page Should Contain  ${login_field}
     Page Should Contain Textfield  ${mobile_number_locator}