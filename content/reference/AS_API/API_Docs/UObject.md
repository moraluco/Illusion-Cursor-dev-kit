# UObject

## Inheritance

UObject → AActor → UAbcImportSettings → UActorBrowsingModeSettings → UActorComponent

## Description

and 930 other children

Direct base class for all UE objects @note The full C++ class is located here: Engine\Source\Runtime\CoreUObject\Public\UObject\Object.h

## VARIABLES

### Outermost

```
const UPackage Outermost
```
### World

```
const UWorld World Name const FName Name IsRooted const bool IsRooted FUNCTIONS GetName FName GetName()const
```

RemoveFromRoot

### void RemoveFromRoot

```
void RemoveFromRoot()
```

GetIsRooted

### bool GetIsRooted

```
bool GetIsRooted()const IsTransient
```

bool IsTransient() const

### Modify

```
bool Modify(bool bAlwaysMarkDirty = true)
```

SetTransactional

### void SetTransactional

```
void SetTransactional(bool bTransactional)
```

IsSupportedForNetworking

### bool IsSupportedForNetworking

```
bool IsSupportedForNetworking()const GetOutermost
```

UPackage GetOutermost() const

### MarkPackageDirty

```
bool MarkPackageDirty()const
```

GetWorld

### UWorld GetWorld

```
UWorld GetWorld()const AddToRoot
```

void AddToRoot()

### GetFullName

```
FString GetFullName(UObject StopOuter = nullptr)const
```

GetPathName

### FString GetPathName

```
FString GetPathName(UObject StopOuter = nullptr)const
```

IsA

### bool IsA

```
bool IsA(UClass Class)const
```

SaveConfig

### void SaveConfig

```
void SaveConfig()
```

LoadConfig

### void LoadConfig

```
void LoadConfig()
```

ReloadConfig

### void ReloadConfig

```
void ReloadConfig()
```

CopyScriptPropertiesFrom

### void CopyScriptPropertiesFrom

```
void CopyScriptPropertiesFrom(UObject OtherObject)
```

opCast

### void opCast

```
void opCast(?&)const
```

ToString

### FString ToString

```
FString ToString()const STATIC FUNCTIONS
```

StaticClass

### static UClass UObject::StaticClass

```
static UClass UObject::StaticClass()
```
