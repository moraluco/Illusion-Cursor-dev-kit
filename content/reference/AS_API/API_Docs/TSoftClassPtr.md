# TSoftClassPtr

## Inheritance

TSoftClassPtr → VARIABLES → AssetName

## Description

const FString AssetName LongPackageName const FString LongPackageName

## FUNCTIONS

### opAssign

```
TSoftObjectPtr<T>& opAssign(FSoftObjectPath Path)
```

ToString

### FString ToString

```
FString ToString()const GetLongPackageName
```

FString GetLongPackageName() const

### GetAssetName

```
FString GetAssetName()const
```

IsValid

### bool IsValid

```
bool IsValid()const IsPending
```

bool IsPending() const

### IsNull

```
bool IsNull()const
```

Reset

### void Reset

```
void Reset()
```

ToSoftObjectPath

### FSoftObjectPath ToSoftObjectPath

```
FSoftObjectPath ToSoftObjectPath()const opAssign
```

TSoftClassPtr<T>& opAssign(

### UClass 	Object

```
UClass 	Object 	)
```

opAssign

### TSoftClassPtr<T>& opAssign

```
TSoftClassPtr<T>& opAssign(TSoftClassPtr<T> Other)
```

opAssign

### TSoftClassPtr<T>& opAssign

```
TSoftClassPtr<T>& opAssign(TSubclassOf<T> Other)
```

opEquals

### bool opEquals

```
bool opEquals(TSoftClassPtr<T> Other)const
```

opEquals

### bool opEquals

```
bool opEquals(TSubclassOf<T> Other)const
```

opEquals

### bool opEquals

```
bool opEquals(UClass Object)const
```

Get

### UClass Get

```
UClass Get()const
```

Returns the class selected at the specified path.  If the class is not loaded, returns nullptr.

### LoadAsync

```
void LoadAsync(FOnSoftClassLoaded OnLoaded)const
```

Asynchronously loads the package that contains the referenced class.  Delegate may be called immediately if class is already loaded.
