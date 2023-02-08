*** Variables ***
${Cookies_Agree}             css:#allow-all-btn > div > button > span > span > span
${Destination}               css:.bw-destination > .grey-600-text
${Destination_field_input}   css:#destination-input
${Top_one}                   css:.bw-transparent-border .ts-small
${Departure}                 css:.bw-departure > .grey-600-text
${Start_date}                css:.bw-histogram-item:nth-child(7) > .bw-date
${Date}                      css:.bw-month.nth-child(8) .bw-calendarBlock:nth-child(20) .flex-nogrow:nth-child(1)
${End_date}                  css:.bw-hoverEnd > .bw.price

*** Keywords ***
Start
    Set Selenium Speed  0.5
    Set Screenshot Directory    Screenshots
    Open Browser      https://www.finnair.com/fi-fi      chrome
Destination
    Click Element     ${Cookies_Agree}
    Click Element     ${Destination}
    Click Element     ${Top_one}
    Click Element     ${Departure}
    #Click Element     ${Start_date}
    #Click Element     ${Date}
    #Click Element     ${End_date}
    #InputText          Helsinki
