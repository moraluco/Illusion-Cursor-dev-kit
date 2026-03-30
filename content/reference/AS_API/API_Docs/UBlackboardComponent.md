# UBlackboardComponent

**Visibility:** public

## Inheritance

UActorComponent → UBlackboardComponent → AI → DefaultBlackboardAsset

## Description

UBlackboardData DefaultBlackboardAsset

data asset defining entries. Will be used as part of InitializeComponent call provided BlackboardAsset hasn't been already set (via a InitializeBlackboard call).

## AI \| COMPONENTS \| BLACKBOARD

### SetValueAsBool

```
void SetValueAsBool(FName KeyName, bool BoolValue)
```

GetLocationFromEntry

### bool GetLocationFromEntry

```
bool GetLocationFromEntry(FName KeyName, FVector& ResultLocation)const
```

return false if call failed (most probably no such entry in BB)

### GetRotationFromEntry

```
bool GetRotationFromEntry(FName KeyName, FRotator& ResultRotation)const
```

return false if call failed (most probably no such entry in BB)

### GetValueAsBool

```
bool GetValueAsBool(FName KeyName)const
```

GetValueAsClass

### UClass GetValueAsClass

```
UClass GetValueAsClass(FName KeyName)const
```

GetValueAsEnum

### uint8 GetValueAsEnum

```
uint8 GetValueAsEnum(FName KeyName)const
```

GetValueAsFloat

### float32 GetValueAsFloat

```
float32 GetValueAsFloat(FName KeyName)const
```

GetValueAsInt

### int GetValueAsInt

```
int GetValueAsInt(FName KeyName)const
```

GetValueAsName

### FName GetValueAsName

```
FName GetValueAsName(FName KeyName)const
```

GetValueAsObject

### UObject GetValueAsObject

```
UObject GetValueAsObject(FName KeyName)const
```

GetValueAsRotator

### FRotator GetValueAsRotator

```
FRotator GetValueAsRotator(FName KeyName)const
```

GetValueAsString

### FString GetValueAsString

```
FString GetValueAsString(FName KeyName)const
```

GetValueAsVector

### FVector GetValueAsVector

```
FVector GetValueAsVector(FName KeyName)const
```

IsVectorValueSet

### bool IsVectorValueSet

```
bool IsVectorValueSet(FName KeyName)const
```

If the vector value has been set (and not cleared), this function returns true (indicating that the value should be valid).  If it's not set, the vector value is invalid and this function will return false.  (Also returns false if the key specified does not hold a vector.)

### ClearValue

```
void ClearValue(FName KeyName)
```

SetValueAsClass

### void SetValueAsClass

```
void SetValueAsClass(FName KeyName, UClass ClassValue)
```

SetValueAsEnum

### void SetValueAsEnum

```
void SetValueAsEnum(FName KeyName, uint8 EnumValue)
```

SetValueAsFloat

### void SetValueAsFloat

```
void SetValueAsFloat(FName KeyName, float32 FloatValue)
```

SetValueAsInt

### void SetValueAsInt

```
void SetValueAsInt(FName KeyName, int IntValue)
```

SetValueAsName

### void SetValueAsName

```
void SetValueAsName(FName KeyName, FName NameValue)
```

SetValueAsObject

### void SetValueAsObject

```
void SetValueAsObject(FName KeyName, UObject ObjectValue)
```

SetValueAsRotator

### void SetValueAsRotator

```
void SetValueAsRotator(FName KeyName, FRotator VectorValue)
```

SetValueAsString

### void SetValueAsString

```
void SetValueAsString(FName KeyName, FString StringValue)
```

SetValueAsVector

### void SetValueAsVector

```
void SetValueAsVector(FName KeyName, FVector VectorValue)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UBlackboardComponent UBlackboardComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UBlackboardComponent UBlackboardComponent::GetOrCreate

```
static UBlackboardComponent UBlackboardComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UBlackboardComponent UBlackboardComponent::Create

```
static UBlackboardComponent UBlackboardComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UBlackboardComponent::StaticClass

```
static UClass UBlackboardComponent::StaticClass()
```
