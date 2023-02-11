class Locators:
    menus_locator = '//*[@class="chNavText darkGreyText"]'
    charter_flights_locator = '//*[@class="reduceMenuSpacing chNavText darkGreyText"]'
    login_button_locator = '//*[@data-cy="LoginHeaderText"]'
    mobile_number_locator = '//*[@id="username"]'
    hotel_page_navigate_locator = '//*[contains(@class,"chHotels")]'
    oneway_trip_locator = '//*[@data-cy="oneWayTrip"]'
    round_trip_locator = '//*[@data-cy="roundTrip"]'
    multi_city_trip_locator = '//*[@data-cy="mulitiCityTrip"]'
    # Hotel page locators
    hotel_items_locator = '//*[contains(@class, "lbl_input latoBold")]'
    city = '//*[@data-cy="hotelCityLabel"]'
    booking_types_locator = '//*[@class="grpBkngOpt__item--text"]'
    # Flight page locator
    flight_page_navigate_locator = '//*[contains(@class,"chFlights")]'
    # Railway Page
    railway_page_navigate_locator = '//*[contains(@class,"chTrains")]'
