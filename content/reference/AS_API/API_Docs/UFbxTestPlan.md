# UFbxTestPlan

**Visibility:** public

## Inheritance

UObject → UFbxTestPlan

## Description

Container for detailing collision automated test data.

## EXPECTEDRESULT

### ExpectedResult

```
TArray<FFbxTestPlanExpectedResult> ExpectedResult
```

Expected preset type

---

## GENERAL

### LodIndex

```
int LodIndex
```

The LOD index in case the user choose to add or reimport a LOD

### bDeleteFolderAssets

```
bool bDeleteFolderAssets
```

If true the test will delete all assets create in the import folder

### Action

```
EFBXTestPlanActionType Action
```

Tell the system what we want to do

### TestPlanName

```
FString TestPlanName
```

Name of the Test Plan

---

## OPTIONS

### ImportUI

```
UFbxImportUI ImportUI
```

Options use for this test plan, Transient because we manually serialize the options.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UFbxTestPlan::StaticClass()
```
