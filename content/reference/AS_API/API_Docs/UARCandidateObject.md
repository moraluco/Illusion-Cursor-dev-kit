# UARCandidateObject

**Visibility:** public

## Inheritance

UDataAsset → UARCandidateObject

## Description

An asset that points to an object to be detected in a scene

## Members

### IMAGE

```
AR CANDIDATE IMAGE
```
### BoundingBox

```
FBox BoundingBox
```

The physical bounds in centimeters of the object that this candidate object represents

### OBJECT

```
AR CANDIDATE OBJECT
```
### FriendlyName

```
FString FriendlyName
```

The friendly name to report back when the object is detected in scenes

### CandidateObjectData

```
TArray<uint8> CandidateObjectData
```

The object to detect in scenes

### AR AUGMENTEDREALITY|OBJECT DETECTION

```
AR AUGMENTEDREALITY|OBJECT DETECTION GetCandidateObjectData const TArray<uint8>& GetCandidateObjectData()const
```

### See: CandidateObjectData

```
See: CandidateObjectData
```

GetFriendlyName

### const FString& GetFriendlyName

```
const FString& GetFriendlyName()const
```

### See: FriendlyName

```
See: FriendlyName
```

SetBoundingBox

### void SetBoundingBox

```
void SetBoundingBox(FBox InBoundingBox)
```

SetCandidateObjectData

### void SetCandidateObjectData

```
void SetCandidateObjectData(TArray<uint8> InCandidateObject)
```

SetFriendlyName

### void SetFriendlyName

```
void SetFriendlyName(FString NewName)
```

GetBoundingBox

### const FBox& GetBoundingBox

```
const FBox& GetBoundingBox()const
```

### See: BoundingBox

```
See: BoundingBox
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UARCandidateObject::StaticClass()
```
