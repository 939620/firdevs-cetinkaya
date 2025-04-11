*** Keywords ***
Open Monefy App
    [Documentation]    Launch the Monefy app on Android emulator
    Open Application    http://localhost:4723
    ...    appium:platformName=Android
    ...    appium:deviceName=Android Emulator
    ...    appium:appPackage=com.monefy.app.lite
    ...    appium:appActivity=com.monefy.activities.main.MainActivity_
    ...    appium:automationName=UiAutomator2


#User logs in
    #[Documentation]    Skip or handle login if required
   # Wait Until Element Is Visible    ${next_button}

User gets started the app
     Wait Until Element Is Visible    ${get_started_button}
     Click Element    ${get_started_button}
     Wait Until Element Is Visible    ${amazing_button}
     Click Element    ${amazing_button}
     Wait Until Element Is Visible    ${yes_button}
     Click Element    ${yes_button}
     Wait Until Element Is Visible    ${allow_button}
     Click Element    ${allow_button}
     Wait Until Element Is Visible    ${ready_button}
     Click Element    ${ready_button}

User clicks on Close button
     Wait Until Element Is Visible    ${close_button}
     Click Element    ${close_button}
     
User clicks on Expense button
     Wait Until Element Is Visible    ${expense_button}
     Click Element    ${expense_button}

User enters an expense amount for a category
     Wait Until Element Is Visible    ${linearLayoutKeyboard}
     Click Element    ${buttonKeyboard5}
     Click Element    ${buttonKeyboard0}
     Click Element    ${buttonKeyboard0}

User clicks on keyboard action button
     Click Element    ${choose_category_button}

User selects a category
    Wait Until Element Is Visible    ${categories}    15s
    Click Element    ${car_category_image}

Validate that the expense amount appears in the circular chart or expense history
    ${expense_amount_car}=    Get Text    ${expense_amount_text}
    Should Contain    ${expense_amount_car}    500

User clicks on green INCOME button
    Wait Until Element Is Visible    ${income_button}
    Click Element    ${income_button}
    
User enters an income amount for a category
     Wait Until Element Is Visible    ${linearLayoutKeyboard}
     Click Element    ${buttonKeyboard2}
     Click Element    ${buttonKeyboard0}
     Click Element    ${buttonKeyboard0}

User selects Saving category
     Wait Until Element Is Visible    ${categories}
     Click Element    ${saving_button}

Validate that the income amount appears in the circular chart or expense history
    ${income_saving_amount}=    Get Text    ${income_amount_text}
    Should Contain    ${income_saving_amount}    200

User clicks on overflow button
    Wait Until Element Is Visible    ${overflow_button}
    Click Element    ${overflow_button}

User clicks on Setting button
    Click Element    ${setting_button}
    Wait Until Element Is Visible    ${settings_text}

User clicks on currency selection button
    Click Element    ${currency_selection_button}

User search the currency
    Wait Until Element Is Visible   ${currency_search_field}
    Input Text    ${currency_search_field}   euro

User selects the currecy
    Wait Until Element Is Visible   ${currency_euro}
    Click Element    ${currency_euro}

Verify that the currency of the selected income amount is displayed
    ${selected_income_currency}=    Get Text    ${income_amount_text}
    Should Contain    ${selected_income_currency}    €
    
Verify that the currency of the selected expense amount is displayed
    ${selected_expense_currency}=    Get Text    ${expense_amount_text}
    Should Contain    ${selected_expense_currency}    €

User clicks on transfer menu tab
    Wait Until Element Is Visible   ${transfer_menu_item}
    Click Element    ${transfer_menu_item}

User clicks on show keyboard button
   Click Element    ${show_keyboard_button}

User enters an amount to transfer
    Wait Until Element Is Visible    ${linearLayoutKeyboard}
    Click Element    ${buttonKeyboard1}
    Click Element    ${buttonKeyboard0}
    Click Element    ${buttonKeyboard0}

Vefify that the Transfer was added text is visible
    Wait Until Element Is Visible    ${confirmation_text}
    Should Contain    ${confirmation_text}    Transfer was added    5s




    
    