# UFunctionalTestingManager

**Visibility:** public

## Inheritance

UBlueprintFunctionLibrary → UFunctionalTestingManager → VARIABLES → OnTestsComplete

## Description

FFunctionalTestEventSignature OnTestsComplete OnTestsBegin FFunctionalTestEventSignature OnTestsBegin OnSetupTests FFunctionalTestEventSignature OnSetupTests

## FUNCTIONALTESTING

### RunAllFunctionalTests

```
static bool UFunctionalTestingManager::RunAllFunctionalTests(bool bNewLog = true, bool bRunLooped = false, FString FailedTestsReproString = "")
```

Triggers in sequence all functional tests found on the level.

**Returns**

true if any tests have been triggered

STATIC FUNCTIONS
StaticClass
static UClass UFunctionalTestingManager::StaticClass()
