# APainCausingVolume

**Visibility:** public

## Inheritance

APhysicsVolume → APainCausingVolume

## Description

Volume that causes damage over time to any Actor that overlaps its collision.

## PAINCAUSINGVOLUME

### DamageType

```
TSubclassOf<UDamageType> DamageType
```

Type of damage done

### PainInterval

```
float32 PainInterval
```

If pain causing, time between damage applications.

### bPainCausing

```
bool bPainCausing
```

Whether volume currently causes damage.

### bEntryPain

```
bool bEntryPain
```

if bPainCausing, cause pain when something enters the volume in addition to damage each second

### DamagePerSec

```
float32 DamagePerSec
```

Damage done per second to actors in this volume when bPainCausing=true

---

## FUNCTIONS

### SetbPainCausing

```
void SetbPainCausing(bool Value)
```

GetbEntryPain

### bool GetbEntryPain

```
bool GetbEntryPain()const SetbEntryPain
```

void SetbEntryPain(

### bool 	Value

```
bool 	Value 	)
```

GetbPainCausing

### bool GetbPainCausing

```
bool GetbPainCausing()const STATIC FUNCTIONS
```

Spawn

### static APainCausingVolume APainCausingVolume::Spawn

```
static APainCausingVolume APainCausingVolume::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass APainCausingVolume::StaticClass

```
static UClass APainCausingVolume::StaticClass()
```
