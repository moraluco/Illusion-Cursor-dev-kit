# UEnum

**Visibility:** public

## Inheritance

UField → UEnum → UPythonGeneratedEnum → UUserDefinedEnum → VARIABLES → MaxEnumValue

## Description

const int64 MaxEnumValue

## FUNCTIONS

### GetDisplayNameTextByIndex

```
FText GetDisplayNameTextByIndex(int InIndex)const
```

GetIndexByName

### int GetIndexByName

```
int GetIndexByName(FName InName, EGetByNameFlags Flags = EGetByNameFlags :: None)const
```

GetNameByValue

### FName GetNameByValue

```
FName GetNameByValue(int InValue)const
```

GetValueByName

### int64 GetValueByName

```
int64 GetValueByName(FName InName, EGetByNameFlags Flags = EGetByNameFlags :: None)const
```

GetNameStringByIndex

### FString GetNameStringByIndex

```
FString GetNameStringByIndex(int InIndex)const
```

GetIndexByNameString

### int GetIndexByNameString

```
int GetIndexByNameString(FString SearchString, EGetByNameFlags Flags = EGetByNameFlags :: None)const
```

GetNameStringByValue

### FString GetNameStringByValue

```
FString GetNameStringByValue(int64 InValue)const
```

GetValueByNameString

### int64 GetValueByNameString

```
int64 GetValueByNameString(FString SearchString, EGetByNameFlags Flags = EGetByNameFlags :: None)const
```

GetNameByIndex

### FName GetNameByIndex

```
FName GetNameByIndex(int InIndex)const
```

GetDisplayNameTextByValue

### FText GetDisplayNameTextByValue

```
FText GetDisplayNameTextByValue(int64 InValue)const
```

GetMaxEnumValue

### int64 GetMaxEnumValue

```
int64 GetMaxEnumValue()const NumEnums
```

int NumEnums() const

### IsValidEnumValue

```
bool IsValidEnumValue(int64 InValue)const
```

IsValidEnumName

### bool IsValidEnumName

```
bool IsValidEnumName(FName InName)const
```

ContainsExistingMax

### bool ContainsExistingMax

```
bool ContainsExistingMax()const GenerateEnumPrefix
```

FString GenerateEnumPrefix() const

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UEnum::StaticClass()
```
