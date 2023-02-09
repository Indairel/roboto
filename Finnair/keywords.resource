*** Variables ***
${Cookies_Agree}             css:#allow-all-btn > div > button > span > span > span
${Destination}               css:.bw-destination > .grey-600-text
${Destination_field_input}   css:#destination-input
${Top_one}                   css:.bw-transparent-border .ts-small
${Departure}                 css:.bw-departure > .grey-600-text
${Elokuu}                    xpath://p[contains(.,'elo')]
${Start_date_12}             xpath://div[8]/div[2]/div[20]/div/div
${Arrival}                   xpath://div[6]/div[3]/div
${End_date_15}               xpath://div[8]/div[2]/div[23]/div/div
${Ready}                     css:.bw-modal-done
${Price}                     xpath://div[8]/div/div[2]
${Price_pln}                 Get Value         ${Price}

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
    Click Element     ${Elokuu}
    Click Element     ${Start_date_12}
    Click Element     ${Ready}
    Click Element     ${Arrival}
    Click Element     ${End_date_15}
    Click Element     ${Ready}
    log                The price is ${Price_pln} pln.
