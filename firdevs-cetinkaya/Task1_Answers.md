# Mobile Budgeting App - Monefy
## Task 1 – Test Planning and Strategy

### 1. What types of testing would you perform on a mobile budgeting app like Monefy?
- Functional Testing  
- UI/UX Testing  
- Regression Testing  
- Performance Testing  
- Security Testing  
- Compatibility Testing  
- Localization Testing  
- Backup & Restore Testing

- Non-Functional Metrics (Performance, Memory)


## 2. How would you ensure test coverage?

- Requirement Traceability Matrix (RTM)
- Test Design Techniques (Equivalence Partitioning, Boundary Value, etc.)
- Risk-Based Testing
- Automation for repetitive tasks
- Peer reviews and test audits

## 3. How would you approach writing automation tests for the app?

- Use Robot Framework with Appium for mobile automation
- Organize code with Page Object Model (POM)
- Include data-driven tests
- Use CI/CD for automatic runs (GitHub Actions or Jenkins)
- Separate keywords, resources, and test cases

## 4. What challenges would you anticipate?

- Frequent UI changes affecting test scripts
- Device/OS fragmentation
- Sync issues due to async operations
- Network dependency
- Handling sensitive user data securely

## 5. How would you prioritize test cases?

1. Core functions (adding expense/income)
2. Data sync & backups
3. User preferences/settings
4. Negative & boundary tests
5. Cross-device compatibility

--------

## Exploratory Testing Report

**Date:** [10.04.2025]  
**QA:** [Firdevs Cetinkaya]  
**Time Spent:** ~2 hours (Testing + Documentation)

### 🔍 Testing Charters

| ID | Charter                                           |Executed? |            Findings                                                               |
|----|---------------------------------------------------|----------|-----------------------------------------------------------------------------------|
| C1 | Add a new expense from a category icon            |   ✅     | Opens input screen, no issues found                                               |
| C2 | Record income using "INCOME" button               |   ✅     | Entry saved, but chart did auto-refresh                                           |
| C3 | Check if totals update correctly                  |   ✅     |  Totals updated after refresh                                                     |
| C4 | Switch between months                             |   ✅     |    Functional, but lacks clear feedback                                           |
| C5 | Explore menu options                              |   ✅     | Menu worked fine;  support section available under  settings                      |
| C6 |Change currency and verify chart updates           |   ✅     |Currency symbol updates, but values are not converted correctly                    |
| C7 |Check that the total amount is displayed correctly |   ✅     |Currency symbol updates, but values are not converted correctly                    |




## Prioritisation of Charters

| Charter | Priority | Reason                          |
|---------|----------|---------------------------------|
| C1      | High     | Core functionality              |
| C2      | High     | Essential for accurate tracking |
| C3      | Medium   | Visual accuracy important       |
| C4      | Low      | UX improvement, not critical    |
| C5      | Low      | Help useful, but not blocking   |
   


------------------


## Risks and Mitigations

| Risk                     | Mitigation                                     |
|--------------------------|------------------------------------------------|
| Data loss or corruption  | Auto-save and backups                          |
| Poor UI feedback         | Improve visual cues                            |
| App crashes              | Input validation and error handling            |
| Sync failures            | Implement retry logic and cloud sync integrity |



---------------



## Bug - iOS
## 1: Currency Change Doesn't Affect Totals Correctly

Severity: High

Steps to reproduce:

Go to Settings → Change Currency
Return to main screen/chart
Totals do not reflect converted values

Impact: Misleading financial data, trust issue

## 2: Language Switch Requires App Restart

Severity: Medium

Steps to Reproduce:

Go to Settings → Change Language
Observe that language remains unchanged

Expected Result:
UI language updates instantly or with clear prompt to restart

Actual Result:
Language remains the same unless the app is killed and restarted
Impact: Poor localization UX, inconsistent experience


## 3: Leading Zeros Allowed in Account Balance Input

Severity : Low 

Steps to Reproduce:

Go to Edit Account screen
Tap on “Initial account balance”
Enter a value like “00080”
Tap "Done"

Expected Result:
The input should auto-correct to “80” or disallow leading zeros.

Actual Result:
App accepts and saves “00080” as the value, which may cause confusion or inconsistencies in data handling.

Impact:It's more of a UI/UX polish issue.