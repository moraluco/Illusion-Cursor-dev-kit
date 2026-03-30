# UNiagaraVersionMetaData

**Visibility:** public

## Inheritance

UObject → UNiagaraVersionMetaData → SCRIPTING → UpdateScriptExecution

## Description

ENiagaraPythonUpdateScriptReference UpdateScriptExecution

Reference to a python script that is executed when the user updates from a previous version to this version.

PythonUpdateScript FString PythonUpdateScript

Python script to run when updating to this script version.

## Members

### DETAILS

```
VERSION DETAILS
```
### bIsVisibleInVersionSelector

```
bool bIsVisibleInVersionSelector
```

If false then this version is not visible in the version selector dropdown menu of the stack. This is useful to hide work in progress versions without removing the module from the search menu.  The exposed version is always visible to users.

### ChangeDescription

```
FText ChangeDescription
```

Changelist displayed to the user when upgrading to a new script version.

### bIsExposedVersion

```
bool bIsExposedVersion
```

If true then this version is exposed to the user and is used as the default version for new assets.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNiagaraVersionMetaData::StaticClass()
```
