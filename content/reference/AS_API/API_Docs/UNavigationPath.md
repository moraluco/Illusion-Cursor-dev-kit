# UNavigationPath

**Visibility:** public

## Inheritance

UObject → UNavigationPath

## Description

UObject wrapper for FNavigationPath

## AI \| DEBUG

### DebugString

```
const FString DebugString
```
### end

```
UObject end
```

---

## AI \| NAVIGATION

PathCost

### PathCost

```
const float32 PathCost
```

PathLength const float32 PathLength

---

## NAVIGATION

### RecalculateOnInvalidation

```
ENavigationOptionFlag RecalculateOnInvalidation
```
### PathPoints

```
TArray<FVector> PathPoints VARIABLES PathUpdatedNotifier FOnNavigationPathUpdated PathUpdatedNotifier AI|DEBUG GetDebugString FString GetDebugString()const
```

### UObject end

```
UObject end
```

EnableDebugDrawing

### void EnableDebugDrawing

```
void EnableDebugDrawing(
```

bool 	bShouldDrawDebugData,

### FLinearColor 	PathColor	 = 	FLinearColor

```
FLinearColor PathColor = FLinearColor(1.000000, 1.000000, 1.000000, 1.000000)
```

)

---

## AI \| NAVIGATION

### GetPathCost

```
float32 GetPathCost()const
```

EnableRecalculationOnInvalidation

### void EnableRecalculationOnInvalidation

```
void EnableRecalculationOnInvalidation(ENavigationOptionFlag DoRecalculation)
```

if enabled path will request recalculation if it gets invalidated due to a change to underlying navigation

### GetPathLength

```
float32 GetPathLength()const
```

IsPartial

### bool IsPartial

```
bool IsPartial()const IsStringPulled
```

bool IsStringPulled() const

### IsValid

```
bool IsValid()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNavigationPath::StaticClass()
```
