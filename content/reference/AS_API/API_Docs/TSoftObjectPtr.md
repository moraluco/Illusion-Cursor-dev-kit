# TSoftObjectPtr

## Inheritance

TSoftObjectPtr → VARIABLES → AssetName

## Description

const FString AssetName LongPackageName const FString LongPackageName

## FUNCTIONS

### Reset

```
void Reset()
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

ToSoftObjectPath

### FSoftObjectPath ToSoftObjectPath

```
FSoftObjectPath ToSoftObjectPath()const opAssign
```

TSoftObjectPtr<T>& opAssign(

### FSoftObjectPath 	Path

```
FSoftObjectPath 	Path 	)
```

opAssign

### TSoftObjectPtr<T>& opAssign

```
TSoftObjectPtr<T>& opAssign(T Object)
```

opAssign

### TSoftObjectPtr<T>& opAssign

```
TSoftObjectPtr<T>& opAssign(TSoftObjectPtr<T> Other)
```

opEquals

### bool opEquals

```
bool opEquals(TSoftObjectPtr<T> Other)const
```

opEquals

### bool opEquals

```
bool opEquals(T Object)const
```

Get

### T Get

```
T Get()const
```

Returns the object selected at the specified path.  If the object is not loaded, returns nullptr.

### LoadAsync

```
void LoadAsync(FOnSoftObjectLoaded OnLoaded)const
```

Asynchronously loads the package that contains the referenced object.  Delegate may be called immediately if object is already loaded.
