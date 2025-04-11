# Monefy Android App Automation

## Tech Stack
- Robot Framework
- Appium
- Python

## Setup

```bash
pip install -r requirements.txt
```

Ensure Appium is running:

```bash
appium
```

Connect your Android device or use an emulator.

## Run Tests

```bash
robot testcases/monefy_testcases.robot
```

## Structure
- `keywords/`: reusable keywords for Monefy actions
- `testcases/`: test case files
- `resources/`: locators and shared data
