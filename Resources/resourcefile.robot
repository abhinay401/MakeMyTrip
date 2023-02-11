*** Settings ***
Library          Selenium2Library

*** Keywords ***
Open Browser And Application
   [Documentation]   Open browser and application
   [Arguments]   ${app_url}=${url}   ${expected_title}=${home_page_title}

   # Aruguments
   # url              domain url
   # expected_title   Page title

   Create Webdriver    Chrome    executable_path=../Drivers/chromedriver.exe
   Go To    ${app_url}
   Maximize Browser Window
   Title Should Be  ${expected_title}

Close Browser And Application
    Close Browser

Verify List Fields Using Locator
    [Documentation]   Verify list of fields by using locator
    [Arguments]  ${locator}   ${fields}

    # Aruguments
    # locator       element_locator
    # fields        list of fields ex:['field1', 'field2', etc..]

    Wait Until Element Is Visible   ${locator}  timeout=20s
    ${field_count}=  Get Length  ${fields}
    FOR    ${index}    IN RANGE    ${field_count}
       Element Text Should Be   (${locator})[${index}+${1}]   ${fields}[${index}]
    END
