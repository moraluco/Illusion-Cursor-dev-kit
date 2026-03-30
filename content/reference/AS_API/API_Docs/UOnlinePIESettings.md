# UOnlinePIESettings

**Visibility:** public

## Inheritance

UDeveloperSettings → UOnlinePIESettings

## Description

Setup login credentials for the Play In Editor (PIE) feature

## LOGINS

### Logins

```
TArray<FPIELoginSettingsInternal> Logins
```

Login credentials, at least one for each instance of PIE that is intended to be run

### bOnlinePIEEnabled

```
bool bOnlinePIEEnabled
```

Attempt to login with user credentials on a backend service before launching the PIE instance.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UOnlinePIESettings::StaticClass()
```
