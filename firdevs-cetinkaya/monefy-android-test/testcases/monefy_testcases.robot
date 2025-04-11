*** Settings ***
Library           AppiumLibrary
Resource          ../keywords/monefy_keywords.robot
Resource          ../resources/locators.robot

Suite Setup       Open Monefy App
Suite Teardown    Close Application

*** Test Cases ***
Add Expense Entry
    [Tags]    MONEFY-001
    Open Monefy App
    #User logs in
    Given User gets started the app
    And User clicks on Close button
    And User clicks on Expense button
    And User enters an expense amount for a category
    And User clicks on keyboard action button
    When User selects a category
    Then Validate that the expense amount appears in the circular chart or expense history

Add a New Income Record
    [Tags]    MONEFY-002
    Given Open Monefy App
    And User gets started the app
    And User clicks on Close button
    And User clicks on green INCOME button
    And User enters an income amount for a category
    And User clicks on keyboard action button
    When User selects Saving category
    Then Validate that the income amount appears in the circular chart or expense history

Navigate to Settings and Change Currency
    [Tags]    MONEFY-002
    Given Open Monefy App
    And User gets started the app
    And User clicks on Close button
    And User clicks on overflow button
    And User clicks on Setting button
    And User clicks on currency selection button
    And User search the currency
    When User selects the currecy
    And User clicks on overflow button
    Then Verify that the currency of the selected income amount is displayed
    Then Verify that the currency of the selected expense amount is displayed

New Transfer Between Accounts
    [Tags]    MONEFY-003
    Given Open Monefy App
    And User gets started the app
    And User clicks on Close button
    And User clicks on transfer menu tab
    And User clicks on show keyboard button
    And User enters an amount to transfer
    When User clicks on keyboard action button
    Then Vefify that the Transfer was added text is visible
    